
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sih_agent {unsigned int irq_base; int edge_work; int edge_change; } ;
struct irq_desc {unsigned int status; } ;


 int BIT (unsigned int) ;
 int EINVAL ;
 unsigned int IRQ_TYPE_EDGE_FALLING ;
 unsigned int IRQ_TYPE_EDGE_RISING ;
 unsigned int IRQ_TYPE_SENSE_MASK ;
 struct sih_agent* get_irq_chip_data (unsigned int) ;
 struct irq_desc* irq_to_desc (unsigned int) ;
 int pr_err (char*,unsigned int) ;
 int queue_work (int ,int *) ;
 int sih_agent_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wq ;

__attribute__((used)) static int twl4030_sih_set_type(unsigned irq, unsigned trigger)
{
 struct sih_agent *sih = get_irq_chip_data(irq);
 struct irq_desc *desc = irq_to_desc(irq);
 unsigned long flags;

 if (!desc) {
  pr_err("twl4030: Invalid IRQ: %d\n", irq);
  return -EINVAL;
 }

 if (trigger & ~(IRQ_TYPE_EDGE_FALLING | IRQ_TYPE_EDGE_RISING))
  return -EINVAL;

 spin_lock_irqsave(&sih_agent_lock, flags);
 if ((desc->status & IRQ_TYPE_SENSE_MASK) != trigger) {
  desc->status &= ~IRQ_TYPE_SENSE_MASK;
  desc->status |= trigger;
  sih->edge_change |= BIT(irq - sih->irq_base);
  queue_work(wq, &sih->edge_work);
 }
 spin_unlock_irqrestore(&sih_agent_lock, flags);
 return 0;
}
