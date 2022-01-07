
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iowa_bus {int dummy; } ;


 struct iowa_bus* iowa_pci_find (unsigned long,int ) ;
 scalar_t__ pci_io_base ;

struct iowa_bus *iowa_pio_find_bus(unsigned long port)
{
 unsigned long vaddr = (unsigned long)pci_io_base + port;
 return iowa_pci_find(vaddr, 0);
}
