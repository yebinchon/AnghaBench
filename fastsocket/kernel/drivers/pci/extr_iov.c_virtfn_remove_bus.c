
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_bus {int number; int devices; } ;


 int BUG_ON (int) ;
 scalar_t__ list_empty (int *) ;
 int pci_domain_nr (struct pci_bus*) ;
 struct pci_bus* pci_find_bus (int ,int) ;
 int pci_remove_bus (struct pci_bus*) ;

__attribute__((used)) static void virtfn_remove_bus(struct pci_bus *bus, int busnr)
{
 struct pci_bus *child;

 if (bus->number == busnr)
  return;

 child = pci_find_bus(pci_domain_nr(bus), busnr);
 BUG_ON(!child);

 if (list_empty(&child->devices))
  pci_remove_bus(child);
}
