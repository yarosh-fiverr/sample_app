module UserPagesUtils

   def valid_signup
    fill_in "Name",         with: "Example User"
    fill_in "Email",        with: "user@example.com"
    fill_in "Password",     with: "foobar"
    fill_in "Confirm Password", with: "foobar"
  end


  RSpec::Matchers.define :have_success_message do |message|
    match do |page|
      page.should have_selector('div.alert.alert-success', text: message)
    end
  end
end
