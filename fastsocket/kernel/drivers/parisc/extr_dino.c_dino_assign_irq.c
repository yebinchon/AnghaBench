
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dino_device {int* global_irq; } ;


 int NO_IRQ ;
 int dino_interrupt_type ;
 int gsc_assign_irq (int *,struct dino_device*) ;

__attribute__((used)) static void dino_assign_irq(struct dino_device *dino, int local_irq, int *irqp)
{
 int irq = gsc_assign_irq(&dino_interrupt_type, dino);
 if (irq == NO_IRQ)
  return;

 *irqp = irq;
 dino->global_irq[local_irq] = irq;
}
