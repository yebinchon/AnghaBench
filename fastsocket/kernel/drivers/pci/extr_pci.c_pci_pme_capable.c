
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int pme_support; int pm_cap; } ;
typedef int pci_power_t ;



bool pci_pme_capable(struct pci_dev *dev, pci_power_t state)
{
 if (!dev->pm_cap)
  return 0;

 return !!(dev->pme_support & (1 << state));
}
