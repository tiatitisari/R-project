# import > tidy > transform, visualise, model > communicate
# gapminder 
install.packages("gapminder") # real dataset
library("gapminder")
install.packages("dplyr")
library("dplyr")
tail(gapminder)

# filter
gapminder %>%
  filter(year==2007)
# Filter for China in 2002
gapminder %>%
  filter(year == 2002, country == 'China')

# arrange descending or ascending 
gapminder %>%
  arrange(gdpPercap)

gapminder %>%
  filter(year==2007) %>%
  arrange(desc(gdpPercap))

# Sort in ascending order of lifeExp
gapminder %>%
  arrange(lifeExp)


# Sort in descending order of lifeExp
gapminder %>%
  arrange(desc(lifeExp))

# Filter for the year 1957, then arrange in descending order of population
gapminder %>%
  filter(year==1957) %>%
  arrange(desc(pop))

# The mutate verb : change or add variable 
gapminder %>%
  mutate(gdp = gdpPercap *pop) %>%
  filter(year == 2007) %>%
  arrange(desc(gdp))

library(gapminder)
library(dplyr)

# Use mutate to change lifeExp to be in months
gapminder %>%
  mutate(lifeExp = 12* lifeExp)

# Use mutate to create a new column called lifeExpMonths
gapminder %>%
  mutate(lifeExpMonths = 12* lifeExp)

# Filter, mutate, and arrange the gapminder dataset
gapminder %>%
  filter(year == 2007) %>%
  mutate(lifeExpMonths = 12* lifeExp) %>%
  arrange(desc(lifeExpMonths))

