
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iowa_bus {int dummy; } ;
typedef int pte_t ;
struct TYPE_2__ {int pgd; } ;
typedef int PCI_IO_ADDR ;


 unsigned long PAGE_SHIFT ;
 scalar_t__ PCI_FIX_ADDR (int const) ;
 int PCI_GET_ADDR_TOKEN (int const) ;
 unsigned long PHB_IO_BASE ;
 unsigned long PHB_IO_END ;
 int * find_linux_pte (int ,unsigned long) ;
 TYPE_1__ init_mm ;
 int iowa_bus_count ;
 struct iowa_bus* iowa_busses ;
 struct iowa_bus* iowa_pci_find (unsigned long,unsigned long) ;
 unsigned long pte_pfn (int ) ;

struct iowa_bus *iowa_mem_find_bus(const PCI_IO_ADDR addr)
{
 struct iowa_bus *bus;
 int token;

 token = PCI_GET_ADDR_TOKEN(addr);

 if (token && token <= iowa_bus_count)
  bus = &iowa_busses[token - 1];
 else {
  unsigned long vaddr, paddr;
  pte_t *ptep;

  vaddr = (unsigned long)PCI_FIX_ADDR(addr);
  if (vaddr < PHB_IO_BASE || vaddr >= PHB_IO_END)
   return ((void*)0);

  ptep = find_linux_pte(init_mm.pgd, vaddr);
  if (ptep == ((void*)0))
   paddr = 0;
  else
   paddr = pte_pfn(*ptep) << PAGE_SHIFT;
  bus = iowa_pci_find(vaddr, paddr);

  if (bus == ((void*)0))
   return ((void*)0);
 }

 return bus;
}
