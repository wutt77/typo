Feature:
    As a blog user
    There may be more than one article saying similar things

Background:
    Given the blog is set up

Scenario: A non-admin cannot merge articles
    When I am on the home page
    And I should not see "merge"
#    And I am logged into admin panel
#    Th

Scenario: merge similar articles
    Given I am logged into the admin panel
    When I follow "All Articles"
    And I follow "Hello World!"
    Then I should see "Merge Articles"
    When I fill in "merge_with" with "aSK9Fc"
    And I press "Merge"
    Then I should be on the admin content page
    And I should see "Articles were successfully merged"



