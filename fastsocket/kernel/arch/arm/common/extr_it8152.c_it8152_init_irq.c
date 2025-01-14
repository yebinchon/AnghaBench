
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IRQF_PROBE ;
 int IRQF_VALID ;
 int IT8152_INTC_LDCNIMR ;
 int IT8152_INTC_LDCNIRR ;
 int IT8152_INTC_LPCNIMR ;
 int IT8152_INTC_LPCNIRR ;
 int IT8152_INTC_PDCNIMR ;
 int IT8152_INTC_PDCNIRR ;
 int IT8152_IRQ (int ) ;
 int IT8152_LAST_IRQ ;
 int __raw_writel (int,int ) ;
 int handle_level_irq ;
 int it8152_irq_chip ;
 int set_irq_chip (int,int *) ;
 int set_irq_flags (int,int) ;
 int set_irq_handler (int,int ) ;

void it8152_init_irq(void)
{
 int irq;

 __raw_writel((0xffff), IT8152_INTC_PDCNIMR);
 __raw_writel((0), IT8152_INTC_PDCNIRR);
 __raw_writel((0xffff), IT8152_INTC_LPCNIMR);
 __raw_writel((0), IT8152_INTC_LPCNIRR);
 __raw_writel((0xffff), IT8152_INTC_LDCNIMR);
 __raw_writel((0), IT8152_INTC_LDCNIRR);

 for (irq = IT8152_IRQ(0); irq <= IT8152_LAST_IRQ; irq++) {
  set_irq_chip(irq, &it8152_irq_chip);
  set_irq_handler(irq, handle_level_irq);
  set_irq_flags(irq, IRQF_VALID | IRQF_PROBE);
 }
}
