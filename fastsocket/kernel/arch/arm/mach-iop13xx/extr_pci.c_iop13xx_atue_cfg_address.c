
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_sys_data {scalar_t__ busnr; } ;
struct pci_bus {scalar_t__ number; struct pci_sys_data* sysdata; } ;


 int IOP13XX_ATUE_OCCAR_BUS_NUM ;
 int IOP13XX_ATUE_OCCAR_DEV_NUM ;
 int IOP13XX_ATUE_OCCAR_FUNC_NUM ;
 scalar_t__ PCI_FUNC (int) ;
 scalar_t__ PCI_SLOT (int) ;
 int PRINTK (char*,scalar_t__,scalar_t__,scalar_t__) ;

__attribute__((used)) static u32 iop13xx_atue_cfg_address(struct pci_bus *bus, int devfn, int where)
{
 struct pci_sys_data *sys = bus->sysdata;
 u32 addr;

 PRINTK("iop13xx_atue_cfg_address: bus: %d dev: %d func: %d",
  bus->number, PCI_SLOT(devfn), PCI_FUNC(devfn));
 addr = ((u32) bus->number) << IOP13XX_ATUE_OCCAR_BUS_NUM |
     ((u32) PCI_SLOT(devfn)) << IOP13XX_ATUE_OCCAR_DEV_NUM |
     ((u32) PCI_FUNC(devfn)) << IOP13XX_ATUE_OCCAR_FUNC_NUM |
     (where & ~0x3);

 if (sys->busnr != bus->number)
  addr |= 1;

 return addr;
}
