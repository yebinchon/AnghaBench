
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irq_host {int inval_irq; } ;
struct TYPE_2__ {struct irq_host* host; int hwirq; } ;


 unsigned int NO_IRQ ;
 unsigned int NUM_ISA_INTERRUPTS ;
 int irq_big_lock ;
 TYPE_1__* irq_map ;
 unsigned int irq_virq_count ;
 int smp_wmb () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

unsigned int irq_alloc_virt(struct irq_host *host,
       unsigned int count,
       unsigned int hint)
{
 unsigned long flags;
 unsigned int i, j, found = NO_IRQ;

 if (count == 0 || count > (irq_virq_count - NUM_ISA_INTERRUPTS))
  return NO_IRQ;

 spin_lock_irqsave(&irq_big_lock, flags);


 if (count == 1 && hint >= NUM_ISA_INTERRUPTS &&
     hint < irq_virq_count && irq_map[hint].host == ((void*)0)) {
  found = hint;
  goto hint_found;
 }




 for (i = NUM_ISA_INTERRUPTS, j = 0; i < irq_virq_count; i++) {
  if (irq_map[i].host != ((void*)0))
   j = 0;
  else
   j++;

  if (j == count) {
   found = i - count + 1;
   break;
  }
 }
 if (found == NO_IRQ) {
  spin_unlock_irqrestore(&irq_big_lock, flags);
  return NO_IRQ;
 }
 hint_found:
 for (i = found; i < (found + count); i++) {
  irq_map[i].hwirq = host->inval_irq;
  smp_wmb();
  irq_map[i].host = host;
 }
 spin_unlock_irqrestore(&irq_big_lock, flags);
 return found;
}
