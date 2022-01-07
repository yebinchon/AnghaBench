
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;





 int disable_ecrc_checking (struct pci_dev*) ;
 int ecrc_policy ;
 int enable_ecrc_checking (struct pci_dev*) ;

void pcie_set_ecrc_checking(struct pci_dev *dev)
{
 switch (ecrc_policy) {
 case 130:
  return;
 case 129:
  disable_ecrc_checking(dev);
  break;
 case 128:
  enable_ecrc_checking(dev);
  break;
 default:
  return;
 }
}
