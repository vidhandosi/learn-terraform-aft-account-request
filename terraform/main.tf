module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "vidhandosiaws+sdbx@gmail.com"
    AccountName               = "sdbx-aft"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "vidhandosiaws+sdbx@gmail.com"
    SSOUserFirstName          = "sdbx"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}
