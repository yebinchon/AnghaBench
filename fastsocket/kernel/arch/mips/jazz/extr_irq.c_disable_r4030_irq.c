
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int JAZZ_IO_IRQ_ENABLE ;
 unsigned int JAZZ_IRQ_START ;
 int r4030_lock ;
 unsigned int r4030_read_reg16 (int ) ;
 int r4030_write_reg16 (int ,unsigned int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void disable_r4030_irq(unsigned int irq)
{
 unsigned int mask = ~(1 << (irq - JAZZ_IRQ_START));
 unsigned long flags;

 spin_lock_irqsave(&r4030_lock, flags);
 mask &= r4030_read_reg16(JAZZ_IO_IRQ_ENABLE);
 r4030_write_reg16(JAZZ_IO_IRQ_ENABLE, mask);
 spin_unlock_irqrestore(&r4030_lock, flags);
}
