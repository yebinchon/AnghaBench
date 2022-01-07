
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnp_dev {int dev; } ;
struct acpi_ipmi_device {int flags; struct pnp_dev* pnp_dev; int handle; } ;
typedef int acpi_status ;


 int ACPI_ADR_SPACE_IPMI ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int EINVAL ;
 int IPMI_FLAGS_HANDLER_INSTALL ;
 int acpi_install_address_space_handler (int ,int ,int *,int *,struct acpi_ipmi_device*) ;
 int acpi_ipmi_space_handler ;
 int dev_warn (int *,char*) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int ipmi_install_space_handler(struct acpi_ipmi_device *ipmi)
{
 acpi_status status;

 if (test_bit(IPMI_FLAGS_HANDLER_INSTALL, &ipmi->flags))
  return 0;

 status = acpi_install_address_space_handler(ipmi->handle,
          ACPI_ADR_SPACE_IPMI,
          &acpi_ipmi_space_handler,
          ((void*)0), ipmi);
 if (ACPI_FAILURE(status)) {
  struct pnp_dev *pnp_dev = ipmi->pnp_dev;
  dev_warn(&pnp_dev->dev, "Can't register IPMI opregion space "
   "handle\n");
  return -EINVAL;
 }
 set_bit(IPMI_FLAGS_HANDLER_INSTALL, &ipmi->flags);
 return 0;
}
