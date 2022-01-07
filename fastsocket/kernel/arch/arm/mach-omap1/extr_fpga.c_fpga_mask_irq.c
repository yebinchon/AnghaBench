
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int INNOVATOR_FPGA_IMR2 ;
 int OMAP1510_FPGA_IMR_HI ;
 int OMAP1510_FPGA_IMR_LO ;
 scalar_t__ OMAP_FPGA_IRQ_BASE ;
 int __raw_readb (int ) ;
 int __raw_writeb (int,int ) ;

__attribute__((used)) static void fpga_mask_irq(unsigned int irq)
{
 irq -= OMAP_FPGA_IRQ_BASE;

 if (irq < 8)
  __raw_writeb((__raw_readb(OMAP1510_FPGA_IMR_LO)
         & ~(1 << irq)), OMAP1510_FPGA_IMR_LO);
 else if (irq < 16)
  __raw_writeb((__raw_readb(OMAP1510_FPGA_IMR_HI)
         & ~(1 << (irq - 8))), OMAP1510_FPGA_IMR_HI);
 else
  __raw_writeb((__raw_readb(INNOVATOR_FPGA_IMR2)
         & ~(1 << (irq - 16))), INNOVATOR_FPGA_IMR2);
}
