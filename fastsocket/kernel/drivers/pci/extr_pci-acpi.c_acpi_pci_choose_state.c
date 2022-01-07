
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
typedef int pci_power_t ;






 int PCI_D0 ;
 int PCI_D1 ;
 int PCI_D2 ;
 int PCI_D3hot ;
 int PCI_POWER_ERROR ;
 int acpi_pm_device_sleep_state (int *,int *) ;

__attribute__((used)) static pci_power_t acpi_pci_choose_state(struct pci_dev *pdev)
{
 int acpi_state;

 acpi_state = acpi_pm_device_sleep_state(&pdev->dev, ((void*)0));
 if (acpi_state < 0)
  return PCI_POWER_ERROR;

 switch (acpi_state) {
 case 131:
  return PCI_D0;
 case 130:
  return PCI_D1;
 case 129:
  return PCI_D2;
 case 128:
  return PCI_D3hot;
 }
 return PCI_POWER_ERROR;
}
