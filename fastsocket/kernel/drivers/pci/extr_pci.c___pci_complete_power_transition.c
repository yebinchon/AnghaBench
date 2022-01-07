
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
typedef scalar_t__ pci_power_t ;


 int EINVAL ;
 scalar_t__ PCI_D0 ;
 int pci_platform_power_transition (struct pci_dev*,scalar_t__) ;

int __pci_complete_power_transition(struct pci_dev *dev, pci_power_t state)
{
 return state >= PCI_D0 ?
   pci_platform_power_transition(dev, state) : -EINVAL;
}
