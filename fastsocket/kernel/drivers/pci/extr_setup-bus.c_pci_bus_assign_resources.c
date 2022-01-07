
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_bus {int dummy; } ;


 int __pci_bus_assign_resources (struct pci_bus const*,int *,int *) ;

void pci_bus_assign_resources(const struct pci_bus *bus)
{
 __pci_bus_assign_resources(bus, ((void*)0), ((void*)0));
}
