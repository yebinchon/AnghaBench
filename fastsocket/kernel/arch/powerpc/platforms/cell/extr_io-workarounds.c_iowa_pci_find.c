
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {unsigned long start; unsigned long end; } ;
struct pci_controller {unsigned long pci_io_size; struct resource* mem_resources; scalar_t__ io_base_virt; } ;
struct iowa_bus {struct pci_controller* phb; } ;


 int iowa_bus_count ;
 struct iowa_bus* iowa_busses ;

__attribute__((used)) static struct iowa_bus *iowa_pci_find(unsigned long vaddr, unsigned long paddr)
{
 int i, j;
 struct resource *res;
 unsigned long vstart, vend;

 for (i = 0; i < iowa_bus_count; i++) {
  struct iowa_bus *bus = &iowa_busses[i];
  struct pci_controller *phb = bus->phb;

  if (vaddr) {
   vstart = (unsigned long)phb->io_base_virt;
   vend = vstart + phb->pci_io_size - 1;
   if ((vaddr >= vstart) && (vaddr <= vend))
    return bus;
  }

  if (paddr)
   for (j = 0; j < 3; j++) {
    res = &phb->mem_resources[j];
    if (paddr >= res->start && paddr <= res->end)
     return bus;
   }
 }

 return ((void*)0);
}
