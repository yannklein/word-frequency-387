# interface.rb
require_relative "frequencies"

article = File.read("article.txt")
words = frequencies(article)

words.sort_by { |word, frequency| frequency }.each do |word, frequency|
  puts "#{frequency}: #{word}"
end
