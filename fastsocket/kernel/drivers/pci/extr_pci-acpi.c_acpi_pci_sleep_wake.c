
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int bus; int dev; } ;


 scalar_t__ acpi_pci_can_wakeup (struct pci_dev*) ;
 int acpi_pci_propagate_wakeup_enable (int ,int) ;
 int acpi_pm_device_sleep_wake (int *,int) ;
 int pci_is_pcie (struct pci_dev*) ;

__attribute__((used)) static int acpi_pci_sleep_wake(struct pci_dev *dev, bool enable)
{
 if (acpi_pci_can_wakeup(dev))
  return acpi_pm_device_sleep_wake(&dev->dev, enable);

 if (!pci_is_pcie(dev))
  acpi_pci_propagate_wakeup_enable(dev->bus, enable);

 return 0;
}
