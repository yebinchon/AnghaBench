
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irq_host {int inval_irq; } ;
struct TYPE_2__ {struct irq_host* host; int hwirq; } ;


 unsigned int NUM_ISA_INTERRUPTS ;
 int WARN_ON (int) ;
 int irq_big_lock ;
 TYPE_1__* irq_map ;
 unsigned int irq_virq_count ;
 int smp_wmb () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void irq_free_virt(unsigned int virq, unsigned int count)
{
 unsigned long flags;
 unsigned int i;

 WARN_ON (virq < NUM_ISA_INTERRUPTS);
 WARN_ON (count == 0 || (virq + count) > irq_virq_count);

 spin_lock_irqsave(&irq_big_lock, flags);
 for (i = virq; i < (virq + count); i++) {
  struct irq_host *host;

  if (i < NUM_ISA_INTERRUPTS ||
      (virq + count) > irq_virq_count)
   continue;

  host = irq_map[i].host;
  irq_map[i].hwirq = host->inval_irq;
  smp_wmb();
  irq_map[i].host = ((void*)0);
 }
 spin_unlock_irqrestore(&irq_big_lock, flags);
}
