
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dn {TYPE_1__* phb; } ;
struct pci_bus {int dummy; } ;
struct device_node {struct pci_dn* data; } ;
struct TYPE_2__ {int bus; } ;


 struct pci_bus* find_bus_among_children (int ,struct device_node*) ;

struct pci_bus *
pcibios_find_pci_bus(struct device_node *dn)
{
 struct pci_dn *pdn = dn->data;

 if (!pdn || !pdn->phb || !pdn->phb->bus)
  return ((void*)0);

 return find_bus_among_children(pdn->phb->bus, dn);
}
