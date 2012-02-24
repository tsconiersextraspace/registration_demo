@RestResource(urlMapping='/Person/*')
global with sharing class PeopleAppService 
{
	@HttpPost
	global static String doPost(RestRequest req, RestResponse res, String firstname, String lastname)
	{
		Person__c person = new Person__c();
		person.First_Name__c = firstname;
		person.Last_Name__c = lastname;
		insert person;
		return person.id;
	}
}