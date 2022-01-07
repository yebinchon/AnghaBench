
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_bus {int dummy; } ;


 int IOP13XX_XBG_BECSR ;
 int PCIBIOS_SUCCESSFUL ;
 int PCI_SLOT (unsigned int) ;
 int PRINTK (char*,unsigned long,int) ;
 int __raw_readl (int ) ;
 int __raw_writel (int,int ) ;
 unsigned long iop13xx_atue_cfg_address (struct pci_bus*,unsigned int,int) ;
 scalar_t__ iop13xx_atue_pci_status (int) ;
 int iop13xx_atue_read (unsigned long) ;
 scalar_t__ is_atue_occdr_error () ;

__attribute__((used)) static int
iop13xx_atue_read_config(struct pci_bus *bus, unsigned int devfn, int where,
  int size, u32 *value)
{
 u32 val;
 unsigned long addr = iop13xx_atue_cfg_address(bus, devfn, where);


 if (!PCI_SLOT(devfn) || (addr & 1)) {
  val = iop13xx_atue_read(addr) >> ((where & 3) * 8);
  if( iop13xx_atue_pci_status(1) || is_atue_occdr_error() ) {
   __raw_writel(__raw_readl(IOP13XX_XBG_BECSR) & 3,
    IOP13XX_XBG_BECSR);
   val = 0xffffffff;
  }

  PRINTK("addr=%#0lx, val=%#010x", addr, val);
 } else
  val = 0xffffffff;

 *value = val;

 return PCIBIOS_SUCCESSFUL;
}
