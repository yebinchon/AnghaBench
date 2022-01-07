
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int GT641XX_IRQ_TO_BIT (unsigned int) ;
 int GT_INTRMASK_OFS ;
 int GT_READ (int ) ;
 int GT_WRITE (int ,int ) ;
 int gt641xx_irq_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void unmask_gt641xx_irq(unsigned int irq)
{
 unsigned long flags;
 u32 mask;

 spin_lock_irqsave(&gt641xx_irq_lock, flags);
 mask = GT_READ(GT_INTRMASK_OFS);
 mask |= GT641XX_IRQ_TO_BIT(irq);
 GT_WRITE(GT_INTRMASK_OFS, mask);
 spin_unlock_irqrestore(&gt641xx_irq_lock, flags);
}
