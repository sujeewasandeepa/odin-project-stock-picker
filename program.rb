#!/usr/bin/env ruby

# This method will take an array of stock prices, one for each hypothetical
# day.
# It returns a pair of days representing the best day to buy and best day
# to sell.

# The logic
# The method stock_picker gets an array of numerical valules.
# We iterate through each element of the array and find the
# minimum value, and its index.
# And we calculate the profit if we sell on the current day.
# (price - min_value) we buy at the lowest possible value.
# And we should buy before we sell.
# Then we sell on the day we can make the biggest possible
# profit. So we buy at the lowest possible day and sell it
# on the highest possible day. We get the indexes of the
# particular values as the days.

demo_array =  [17,7,6,9,13,8,6,1,10]

# method starts here
def stock_picker(stock_prices)
  max_profit = 0
  min_value = stock_prices[0]
  days_buy_sell = [0, 0]
  sell_day = 0
  buy_day = 0
  min_value_index = 0

  stock_prices.each_with_index do |price, index|
    if price < min_value
      puts price
      min_value = price
      min_value_index = index
    end

    if price - min_value > max_profit
      max_profit = price - min_value
      sell_day = index
      buy_day = min_value_index
    end
  end

  days_buy_sell = [buy_day, sell_day]
  days_buy_sell

end

# a simple test
test = stock_picker(demo_array)
p test
