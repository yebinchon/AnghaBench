
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_bus {int number; } ;


 int PCI_CFG_BUS_SHIFT ;
 unsigned int PCI_CFG_FUNC_SHIFT ;

__attribute__((used)) static inline unsigned int
calc_cfg_addr(struct pci_bus *bus, unsigned int devfn, int where)
{
 unsigned int addr;

 addr = ((bus->number > 0) ? (((bus->number & 0xff) << PCI_CFG_BUS_SHIFT) | 1) : 0);
 addr |= ((devfn & 0xff) << PCI_CFG_FUNC_SHIFT) | (where & 0xfc);

 return addr;
}
