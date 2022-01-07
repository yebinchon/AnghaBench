
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gsc_asic {int* global_irq; } ;


 int NO_IRQ ;
 int gsc_asic_interrupt_type ;
 int gsc_assign_irq (int *,struct gsc_asic*) ;

void gsc_asic_assign_irq(struct gsc_asic *asic, int local_irq, int *irqp)
{
 int irq = asic->global_irq[local_irq];

 if (irq <= 0) {
  irq = gsc_assign_irq(&gsc_asic_interrupt_type, asic);
  if (irq == NO_IRQ)
   return;

  asic->global_irq[local_irq] = irq;
 }
 *irqp = irq;
}
