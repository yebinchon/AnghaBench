
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ I8259A_IRQ_BASE ;
 int PIC_MASTER_CMD ;
 int PIC_SLAVE_CMD ;
 int i8259A_lock ;
 unsigned int inb (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int i8259A_irq_pending(unsigned int irq)
{
 unsigned int mask;
 unsigned long flags;
 int ret;

 irq -= I8259A_IRQ_BASE;
 mask = 1 << irq;
 spin_lock_irqsave(&i8259A_lock, flags);
 if (irq < 8)
  ret = inb(PIC_MASTER_CMD) & mask;
 else
  ret = inb(PIC_SLAVE_CMD) & (mask >> 8);
 spin_unlock_irqrestore(&i8259A_lock, flags);

 return ret;
}
