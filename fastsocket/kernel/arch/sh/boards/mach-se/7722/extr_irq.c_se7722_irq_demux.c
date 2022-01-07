
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_desc {int dummy; } ;


 int IRQ01_STS ;
 unsigned int SE7722_FPGA_IRQ_BASE ;
 int SE7722_FPGA_IRQ_NR ;
 unsigned short ctrl_inw (int ) ;
 int handle_level_irq (unsigned int,struct irq_desc*) ;
 struct irq_desc* irq_desc ;

__attribute__((used)) static void se7722_irq_demux(unsigned int irq, struct irq_desc *desc)
{
 unsigned short intv = ctrl_inw(IRQ01_STS);
 struct irq_desc *ext_desc;
 unsigned int ext_irq = SE7722_FPGA_IRQ_BASE;

 intv &= (1 << SE7722_FPGA_IRQ_NR) - 1;

 while (intv) {
  if (intv & 1) {
   ext_desc = irq_desc + ext_irq;
   handle_level_irq(ext_irq, ext_desc);
  }
  intv >>= 1;
  ext_irq++;
 }
}
