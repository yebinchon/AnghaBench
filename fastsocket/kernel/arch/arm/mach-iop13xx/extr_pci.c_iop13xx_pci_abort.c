
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int ARM_pc; int ARM_lr; } ;


 int IOP13XX_XBG_BECSR ;
 int IOP13XX_XBG_BERAR ;
 int IOP13XX_XBG_BERUAR ;
 int PRINTK (char*,unsigned long,...) ;
 int __raw_readl (int ) ;
 scalar_t__ is_atue_occdr_error () ;
 scalar_t__ is_atux_occdr_error () ;

int
iop13xx_pci_abort(unsigned long addr, unsigned int fsr, struct pt_regs *regs)
{
 PRINTK("Data abort: address = 0x%08lx "
      "fsr = 0x%03x PC = 0x%08lx LR = 0x%08lx",
  addr, fsr, regs->ARM_pc, regs->ARM_lr);

 PRINTK("IOP13XX_XBG_BECSR: %#10x", __raw_readl(IOP13XX_XBG_BECSR));
 PRINTK("IOP13XX_XBG_BERAR: %#10x", __raw_readl(IOP13XX_XBG_BERAR));
 PRINTK("IOP13XX_XBG_BERUAR: %#10x", __raw_readl(IOP13XX_XBG_BERUAR));




 if (fsr & (1 << 10))
  regs->ARM_pc += 4;

 if (is_atue_occdr_error() || is_atux_occdr_error())
  return 0;
 else
  return 1;
}
