
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int INTERRUPT_REG ;
 int KEYCODE_REG ;
 int Q40_IRQ_KEYB_MASK ;
 int master_inb (int ) ;
 int q40kbd_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void q40kbd_flush(void)
{
 int maxread = 100;
 unsigned long flags;

 spin_lock_irqsave(&q40kbd_lock, flags);

 while (maxread-- && (Q40_IRQ_KEYB_MASK & master_inb(INTERRUPT_REG)))
  master_inb(KEYCODE_REG);

 spin_unlock_irqrestore(&q40kbd_lock, flags);
}
