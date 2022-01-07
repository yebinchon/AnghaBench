
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_sys_data {int busnr; } ;
struct pci_bus {int number; struct pci_sys_data* sysdata; } ;


 int PCI_FUNC (int) ;
 int PCI_SLOT (int) ;

__attribute__((used)) static u32 iop3xx_cfg_address(struct pci_bus *bus, int devfn, int where)
{
 struct pci_sys_data *sys = bus->sysdata;
 u32 addr;

 if (sys->busnr == bus->number)
  addr = 1 << (PCI_SLOT(devfn) + 16) | (PCI_SLOT(devfn) << 11);
 else
  addr = bus->number << 16 | PCI_SLOT(devfn) << 11 | 1;

 addr |= PCI_FUNC(devfn) << 8 | (where & ~3);

 return addr;
}
