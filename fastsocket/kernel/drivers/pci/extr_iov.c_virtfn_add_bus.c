
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int parent; } ;
struct pci_bus {int number; int subordinate; int bridge; TYPE_1__ dev; } ;


 struct pci_bus* pci_add_new_bus (struct pci_bus*,int *,int) ;
 int pci_bus_add_child (struct pci_bus*) ;
 int pci_domain_nr (struct pci_bus*) ;
 struct pci_bus* pci_find_bus (int ,int) ;
 int pci_remove_bus (struct pci_bus*) ;

__attribute__((used)) static struct pci_bus *virtfn_add_bus(struct pci_bus *bus, int busnr)
{
 int rc;
 struct pci_bus *child;

 if (bus->number == busnr)
  return bus;

 child = pci_find_bus(pci_domain_nr(bus), busnr);
 if (child)
  return child;

 child = pci_add_new_bus(bus, ((void*)0), busnr);
 if (!child)
  return ((void*)0);

 child->subordinate = busnr;
 child->dev.parent = bus->bridge;
 rc = pci_bus_add_child(child);
 if (rc) {
  pci_remove_bus(child);
  return ((void*)0);
 }

 return child;
}
