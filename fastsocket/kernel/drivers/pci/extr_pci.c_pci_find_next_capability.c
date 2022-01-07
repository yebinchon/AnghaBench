
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct pci_dev {int devfn; int bus; } ;


 scalar_t__ PCI_CAP_LIST_NEXT ;
 int __pci_find_next_cap (int ,int ,scalar_t__,int) ;

int pci_find_next_capability(struct pci_dev *dev, u8 pos, int cap)
{
 return __pci_find_next_cap(dev->bus, dev->devfn,
       pos + PCI_CAP_LIST_NEXT, cap);
}
