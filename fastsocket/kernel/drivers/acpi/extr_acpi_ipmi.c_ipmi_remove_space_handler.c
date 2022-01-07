
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_ipmi_device {int flags; int handle; } ;


 int ACPI_ADR_SPACE_IPMI ;
 int IPMI_FLAGS_HANDLER_INSTALL ;
 int acpi_ipmi_space_handler ;
 int acpi_remove_address_space_handler (int ,int ,int *) ;
 int clear_bit (int ,int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void ipmi_remove_space_handler(struct acpi_ipmi_device *ipmi)
{
 if (!test_bit(IPMI_FLAGS_HANDLER_INSTALL, &ipmi->flags))
  return;

 acpi_remove_address_space_handler(ipmi->handle,
    ACPI_ADR_SPACE_IPMI, &acpi_ipmi_space_handler);

 clear_bit(IPMI_FLAGS_HANDLER_INSTALL, &ipmi->flags);
}
