
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ expires; } ;
struct s6i2c_if {scalar_t__ timeout_count; int lock; int complete; TYPE_1__ timeout_timer; } ;


 scalar_t__ POLL_TIMEOUT ;
 int S6_I2C_INTRMASK ;
 int add_timer (TYPE_1__*) ;
 int complete (int *) ;
 int i2c_wr16 (struct s6i2c_if*,int ,int ) ;
 scalar_t__ jiffies ;
 int s6i2c_handle_interrupt (struct s6i2c_if*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void s6i2c_timeout(unsigned long data)
{
 struct s6i2c_if *iface = (struct s6i2c_if *)data;
 unsigned long flags;

 spin_lock_irqsave(&iface->lock, flags);
 s6i2c_handle_interrupt(iface);
 if (--iface->timeout_count > 0) {
  iface->timeout_timer.expires = jiffies + POLL_TIMEOUT;
  add_timer(&iface->timeout_timer);
 } else {
  complete(&iface->complete);
  i2c_wr16(iface, S6_I2C_INTRMASK, 0);
 }
 spin_unlock_irqrestore(&iface->lock, flags);
}
