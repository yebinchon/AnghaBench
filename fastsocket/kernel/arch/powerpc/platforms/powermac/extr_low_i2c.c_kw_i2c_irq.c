
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ expires; } ;
struct pmac_i2c_host_kw {scalar_t__ state; int lock; TYPE_1__ timeout_timer; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 scalar_t__ KW_POLL_TIMEOUT ;
 int add_timer (TYPE_1__*) ;
 int del_timer (TYPE_1__*) ;
 scalar_t__ jiffies ;
 int kw_i2c_handle_interrupt (struct pmac_i2c_host_kw*,int ) ;
 int kw_read_reg (int ) ;
 int reg_isr ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ state_idle ;

__attribute__((used)) static irqreturn_t kw_i2c_irq(int irq, void *dev_id)
{
 struct pmac_i2c_host_kw *host = dev_id;
 unsigned long flags;

 spin_lock_irqsave(&host->lock, flags);
 del_timer(&host->timeout_timer);
 kw_i2c_handle_interrupt(host, kw_read_reg(reg_isr));
 if (host->state != state_idle) {
  host->timeout_timer.expires = jiffies + KW_POLL_TIMEOUT;
  add_timer(&host->timeout_timer);
 }
 spin_unlock_irqrestore(&host->lock, flags);
 return IRQ_HANDLED;
}
