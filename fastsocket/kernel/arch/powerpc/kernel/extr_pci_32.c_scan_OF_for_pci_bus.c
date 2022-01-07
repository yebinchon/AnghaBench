
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_controller {int dn; } ;
struct pci_bus {TYPE_1__* self; struct pci_bus* parent; } ;
struct device_node {int dummy; } ;
struct TYPE_2__ {int devfn; } ;


 struct device_node* of_node_get (int ) ;
 int of_node_put (struct device_node*) ;
 struct pci_controller* pci_bus_to_host (struct pci_bus*) ;
 struct device_node* scan_OF_for_pci_dev (struct device_node*,int ) ;

__attribute__((used)) static struct device_node *scan_OF_for_pci_bus(struct pci_bus *bus)
{
 struct device_node *parent, *np;


 if (bus->self == ((void*)0) || bus->parent == ((void*)0)) {
  struct pci_controller *hose = pci_bus_to_host(bus);
  if (hose == ((void*)0))
   return ((void*)0);
  return of_node_get(hose->dn);
 }


 parent = scan_OF_for_pci_bus(bus->parent);
 if (parent == ((void*)0))
  return ((void*)0);


 np = scan_OF_for_pci_dev(parent, bus->self->devfn);
 of_node_put(parent);

 return np;
}
