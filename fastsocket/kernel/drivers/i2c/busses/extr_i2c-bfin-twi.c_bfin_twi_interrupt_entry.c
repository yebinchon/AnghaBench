
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfin_twi_iface {int lock; int timeout_timer; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int bfin_twi_handle_interrupt (struct bfin_twi_iface*) ;
 int del_timer (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static irqreturn_t bfin_twi_interrupt_entry(int irq, void *dev_id)
{
 struct bfin_twi_iface *iface = dev_id;
 unsigned long flags;

 spin_lock_irqsave(&iface->lock, flags);
 del_timer(&iface->timeout_timer);
 bfin_twi_handle_interrupt(iface);
 spin_unlock_irqrestore(&iface->lock, flags);
 return IRQ_HANDLED;
}
