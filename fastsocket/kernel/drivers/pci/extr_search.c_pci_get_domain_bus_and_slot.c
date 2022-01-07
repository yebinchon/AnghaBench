
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {unsigned int devfn; TYPE_1__* bus; } ;
struct TYPE_2__ {unsigned int number; } ;


 int PCI_ANY_ID ;
 int pci_domain_nr (TYPE_1__*) ;
 struct pci_dev* pci_get_device (int ,int ,struct pci_dev*) ;

struct pci_dev *pci_get_domain_bus_and_slot(int domain, unsigned int bus,
         unsigned int devfn)
{
 struct pci_dev *dev = ((void*)0);

 while ((dev = pci_get_device(PCI_ANY_ID, PCI_ANY_ID, dev)) != ((void*)0)) {
  if (pci_domain_nr(dev->bus) == domain &&
      (dev->bus->number == bus && dev->devfn == devfn))
   return dev;
 }
 return ((void*)0);
}
