
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_bus {int resources; scalar_t__* resource; } ;


 int PCI_BUS_NUM_RESOURCES ;
 int pci_free_resource_list (int *) ;

void pci_bus_remove_resources(struct pci_bus *bus)
{
 int i;

 for (i = 0; i < PCI_BUS_NUM_RESOURCES; i++)
  bus->resource[i] = 0;

 pci_free_resource_list(&bus->resources);
}
