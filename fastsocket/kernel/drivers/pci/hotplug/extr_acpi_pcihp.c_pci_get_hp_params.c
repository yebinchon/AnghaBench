
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {struct pci_bus* bus; } ;
struct pci_bus {struct pci_bus* parent; } ;
struct hotplug_params {int dummy; } ;
typedef int acpi_status ;
typedef int * acpi_handle ;


 scalar_t__ ACPI_FAILURE (int ) ;
 scalar_t__ ACPI_SUCCESS (int ) ;
 int ENODEV ;
 int acpi_get_parent (int *,int **) ;
 scalar_t__ acpi_is_root_bridge (int *) ;
 int * acpi_pci_get_bridge_handle (struct pci_bus*) ;
 int acpi_run_hpp (int *,struct hotplug_params*) ;
 int acpi_run_hpx (int *,struct hotplug_params*) ;

int pci_get_hp_params(struct pci_dev *dev, struct hotplug_params *hpp)
{
 acpi_status status;
 acpi_handle handle, phandle;
 struct pci_bus *pbus;

 handle = ((void*)0);
 for (pbus = dev->bus; pbus; pbus = pbus->parent) {
  handle = acpi_pci_get_bridge_handle(pbus);
  if (handle)
   break;
 }







 while (handle) {
  status = acpi_run_hpx(handle, hpp);
  if (ACPI_SUCCESS(status))
   return 0;
  status = acpi_run_hpp(handle, hpp);
  if (ACPI_SUCCESS(status))
   return 0;
  if (acpi_is_root_bridge(handle))
   break;
  status = acpi_get_parent(handle, &phandle);
  if (ACPI_FAILURE(status))
   break;
  handle = phandle;
 }
 return -ENODEV;
}
