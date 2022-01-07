
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_desc {struct eic* handler_data; } ;
struct eic {scalar_t__ first_irq; } ;


 int IMR ;
 int ISR ;
 unsigned long eic_readl (struct eic*,int ) ;
 int fls (unsigned long) ;
 int generic_handle_irq (scalar_t__) ;

__attribute__((used)) static void demux_eic_irq(unsigned int irq, struct irq_desc *desc)
{
 struct eic *eic = desc->handler_data;
 unsigned long status, pending;
 unsigned int i;

 status = eic_readl(eic, ISR);
 pending = status & eic_readl(eic, IMR);

 while (pending) {
  i = fls(pending) - 1;
  pending &= ~(1 << i);

  generic_handle_irq(i + eic->first_irq);
 }
}
