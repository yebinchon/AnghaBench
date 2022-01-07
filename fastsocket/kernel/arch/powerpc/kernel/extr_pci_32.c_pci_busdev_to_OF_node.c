
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_bus {int number; } ;
struct device_node {char* full_name; } ;


 int of_node_put (struct device_node*) ;
 int pr_debug (char*,char*,...) ;
 struct device_node* scan_OF_for_pci_bus (struct pci_bus*) ;
 struct device_node* scan_OF_for_pci_dev (struct device_node*,int) ;

struct device_node *
pci_busdev_to_OF_node(struct pci_bus *bus, int devfn)
{
 struct device_node *parent, *np;

 pr_debug("pci_busdev_to_OF_node(%d,0x%x)\n", bus->number, devfn);
 parent = scan_OF_for_pci_bus(bus);
 if (parent == ((void*)0))
  return ((void*)0);
 pr_debug(" parent is %s\n", parent ? parent->full_name : "<NULL>");
 np = scan_OF_for_pci_dev(parent, devfn);
 of_node_put(parent);
 pr_debug(" result is %s\n", np ? np->full_name : "<NULL>");





 return np;
}
