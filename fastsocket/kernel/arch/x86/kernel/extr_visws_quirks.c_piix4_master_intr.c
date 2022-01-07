
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_desc {int status; int * action; } ;
typedef int irqreturn_t ;


 int IRQ_DISABLED ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int cached_irq_mask ;
 int cached_master_mask ;
 int cached_slave_mask ;
 int enable_8259A_irq (int) ;
 int handle_IRQ_event (int,int *) ;
 int i8259A_lock ;
 int inb (int) ;
 struct irq_desc* irq_to_desc (int) ;
 int kstat_incr_irqs_this_cpu (int,struct irq_desc*) ;
 scalar_t__ likely (int ) ;
 int outb (int,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static irqreturn_t piix4_master_intr(int irq, void *dev_id)
{
 int realirq;
 struct irq_desc *desc;
 unsigned long flags;

 spin_lock_irqsave(&i8259A_lock, flags);


 outb(0x0c, 0x20);
 realirq = inb(0x20);




 if (unlikely(!(realirq & 0x80)))
  goto out_unlock;

 realirq &= 7;

 if (unlikely(realirq == 2)) {
  outb(0x0c, 0xa0);
  realirq = inb(0xa0);

  if (unlikely(!(realirq & 0x80)))
   goto out_unlock;

  realirq = (realirq & 7) + 8;
 }


 cached_irq_mask |= 1 << realirq;
 if (unlikely(realirq > 7)) {
  inb(0xa1);
  outb(cached_slave_mask, 0xa1);
  outb(0x60 + (realirq & 7), 0xa0);
  outb(0x60 + 2, 0x20);
 } else {
  inb(0x21);
  outb(cached_master_mask, 0x21);
  outb(0x60 + realirq, 0x20);
 }

 spin_unlock_irqrestore(&i8259A_lock, flags);

 desc = irq_to_desc(realirq);




 kstat_incr_irqs_this_cpu(realirq, desc);

 if (likely(desc->action != ((void*)0)))
  handle_IRQ_event(realirq, desc->action);

 if (!(desc->status & IRQ_DISABLED))
  enable_8259A_irq(realirq);

 return IRQ_HANDLED;

out_unlock:
 spin_unlock_irqrestore(&i8259A_lock, flags);
 return IRQ_NONE;
}
