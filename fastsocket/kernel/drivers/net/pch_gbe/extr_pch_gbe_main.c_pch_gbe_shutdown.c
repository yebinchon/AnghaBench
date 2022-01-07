
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int PCI_D3hot ;
 scalar_t__ SYSTEM_POWER_OFF ;
 int __pch_gbe_suspend (struct pci_dev*) ;
 int pci_set_power_state (struct pci_dev*,int ) ;
 int pci_wake_from_d3 (struct pci_dev*,int) ;
 scalar_t__ system_state ;

__attribute__((used)) static void pch_gbe_shutdown(struct pci_dev *pdev)
{
 __pch_gbe_suspend(pdev);
 if (system_state == SYSTEM_POWER_OFF) {
  pci_wake_from_d3(pdev, 1);
  pci_set_power_state(pdev, PCI_D3hot);
 }
}
