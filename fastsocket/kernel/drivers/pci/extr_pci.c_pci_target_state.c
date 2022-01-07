
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int pme_support; int dev; int pm_cap; } ;
typedef int pci_power_t ;


 int PCI_D0 ;


 int PCI_D3hot ;


 scalar_t__ device_may_wakeup (int *) ;
 int pci_no_d1d2 (struct pci_dev*) ;
 int platform_pci_choose_state (struct pci_dev*) ;
 scalar_t__ platform_pci_power_manageable (struct pci_dev*) ;

pci_power_t pci_target_state(struct pci_dev *dev)
{
 pci_power_t target_state = PCI_D3hot;

 if (platform_pci_power_manageable(dev)) {




  pci_power_t state = platform_pci_choose_state(dev);

  switch (state) {
  case 129:
  case 128:
   break;
  case 131:
  case 130:
   if (pci_no_d1d2(dev))
    break;
  default:
   target_state = state;
  }
 } else if (!dev->pm_cap) {
  target_state = PCI_D0;
 } else if (device_may_wakeup(&dev->dev)) {





  if (dev->pme_support) {
   while (target_state
         && !(dev->pme_support & (1 << target_state)))
    target_state--;
  }
 }

 return target_state;
}
