
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct irq_desc {int dummy; } ;


 int OMAP_FPGA_IRQ_BASE ;
 int OMAP_FPGA_IRQ_END ;
 int generic_handle_irq (int) ;
 int get_fpga_unmasked_irqs () ;

void innovator_fpga_IRQ_demux(unsigned int irq, struct irq_desc *desc)
{
 u32 stat;
 int fpga_irq;

 stat = get_fpga_unmasked_irqs();

 if (!stat)
  return;

 for (fpga_irq = OMAP_FPGA_IRQ_BASE;
      (fpga_irq < OMAP_FPGA_IRQ_END) && stat;
      fpga_irq++, stat >>= 1) {
  if (stat & 1) {
   generic_handle_irq(fpga_irq);
  }
 }
}
