
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int inc_irq_stat (int ) ;
 int irq_resched_count ;

__attribute__((used)) static irqreturn_t xen_reschedule_interrupt(int irq, void *dev_id)
{
 inc_irq_stat(irq_resched_count);

 return IRQ_HANDLED;
}
