
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct pci_bus {int * bridge; struct pci_bus* parent; struct pci_dev* self; } ;


 int acpi_pm_device_sleep_wake (int *,int) ;
 scalar_t__ pci_is_pcie (struct pci_dev*) ;

__attribute__((used)) static void acpi_pci_propagate_wakeup_enable(struct pci_bus *bus, bool enable)
{
 while (bus->parent) {
  struct pci_dev *bridge = bus->self;
  int ret;

  ret = acpi_pm_device_sleep_wake(&bridge->dev, enable);
  if (!ret || pci_is_pcie(bridge))
   return;
  bus = bus->parent;
 }


 if (bus->bridge)
  acpi_pm_device_sleep_wake(bus->bridge, enable);
}
