module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "<zach+thirdtestaft@scalesec.com"
    AccountName               = "sandbox-af-3"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "<zach@scalesec.com"
    SSOUserFirstName          = "Zach"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "Zach"
    change_reason       = "Learning AFT"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}
