
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_bus {int dummy; } ;


 int IOP13XX_ATUX_OCCAR ;
 int IOP13XX_ATUX_OCCDR ;
 int PCIBIOS_SUCCESSFUL ;
 int __raw_writel (int,int ) ;
 unsigned long iop13xx_atux_cfg_address (struct pci_bus*,unsigned int,int) ;
 int iop13xx_atux_pci_status (int) ;
 int iop13xx_atux_read (unsigned long) ;

__attribute__((used)) static int
iop13xx_atux_write_config(struct pci_bus *bus, unsigned int devfn, int where,
  int size, u32 value)
{
 unsigned long addr = iop13xx_atux_cfg_address(bus, devfn, where);
 u32 val;

 if (size != 4) {
  val = iop13xx_atux_read(addr);
  if (!iop13xx_atux_pci_status(1) == 0)
   return PCIBIOS_SUCCESSFUL;

  where = (where & 3) * 8;

  if (size == 1)
   val &= ~(0xff << where);
  else
   val &= ~(0xffff << where);

  __raw_writel(val | value << where, IOP13XX_ATUX_OCCDR);
 } else {
  __raw_writel(addr, IOP13XX_ATUX_OCCAR);
  __raw_writel(value, IOP13XX_ATUX_OCCDR);
 }

 return PCIBIOS_SUCCESSFUL;
}
