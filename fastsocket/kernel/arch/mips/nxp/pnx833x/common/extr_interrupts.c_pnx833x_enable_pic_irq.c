
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ IRQFLAG_DISABLED ;
 scalar_t__ IRQFLAG_STARTED ;
 unsigned int PNX833X_PIC_IRQ_BASE ;
 scalar_t__* irqflags ;
 int pnx833x_hard_enable_pic_irq (unsigned int) ;
 int pnx833x_irq_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void pnx833x_enable_pic_irq(unsigned int irq)
{
 unsigned long flags;
 unsigned int pic_irq = irq - PNX833X_PIC_IRQ_BASE;

 spin_lock_irqsave(&pnx833x_irq_lock, flags);

 irqflags[pic_irq] &= ~IRQFLAG_DISABLED;
 if (irqflags[pic_irq] == IRQFLAG_STARTED)
  pnx833x_hard_enable_pic_irq(pic_irq);

 spin_unlock_irqrestore(&pnx833x_irq_lock, flags);
}
