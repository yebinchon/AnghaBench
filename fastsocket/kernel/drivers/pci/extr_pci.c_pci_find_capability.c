
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int devfn; int bus; int hdr_type; } ;


 int __pci_bus_find_cap_start (int ,int ,int ) ;
 int __pci_find_next_cap (int ,int ,int,int) ;

int pci_find_capability(struct pci_dev *dev, int cap)
{
 int pos;

 pos = __pci_bus_find_cap_start(dev->bus, dev->devfn, dev->hdr_type);
 if (pos)
  pos = __pci_find_next_cap(dev->bus, dev->devfn, pos, cap);

 return pos;
}
