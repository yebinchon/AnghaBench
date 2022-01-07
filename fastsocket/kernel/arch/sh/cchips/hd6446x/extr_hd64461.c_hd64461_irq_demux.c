
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_desc {int dummy; } ;


 unsigned int HD64461_IRQBASE ;
 int HD64461_IRQ_NUM ;
 int HD64461_NIRR ;
 unsigned short ctrl_inw (int ) ;
 int handle_level_irq (unsigned int,struct irq_desc*) ;
 struct irq_desc* irq_desc ;

__attribute__((used)) static void hd64461_irq_demux(unsigned int irq, struct irq_desc *desc)
{
 unsigned short intv = ctrl_inw(HD64461_NIRR);
 struct irq_desc *ext_desc;
 unsigned int ext_irq = HD64461_IRQBASE;

 intv &= (1 << HD64461_IRQ_NUM) - 1;

 while (intv) {
  if (intv & 1) {
   ext_desc = irq_desc + ext_irq;
   handle_level_irq(ext_irq, ext_desc);
  }
  intv >>= 1;
  ext_irq++;
 }
}
