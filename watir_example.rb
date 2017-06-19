require 'watir'
# require 'selenium-webdriver'

browser = Watir::Browser.new :chrome

# Wait before setting off the rest of the tests.

browser.driver.manage.timeouts.implicit_wait = 3 

browser.goto 'http://www.bbc.co.uk'

puts browser.title
# puts browser.html

puts browser.status

sign_in = browser.link text: 'Sign in'

sign_in.exists?

sign_in.click


username = browser.text_field(:id, 'username-input')
password = browser.text_field(:id, 'password-input')

username.set 'test'
password.set 'test'

button = browser.button(id: 'submit-button')
button.exists?
button.click