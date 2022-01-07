
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ expires; } ;
struct bfin_twi_iface {int result; scalar_t__ timeout_count; int lock; int complete; TYPE_1__ timeout_timer; } ;


 scalar_t__ POLL_TIMEOUT ;
 int add_timer (TYPE_1__*) ;
 int bfin_twi_handle_interrupt (struct bfin_twi_iface*) ;
 int complete (int *) ;
 scalar_t__ jiffies ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void bfin_twi_timeout(unsigned long data)
{
 struct bfin_twi_iface *iface = (struct bfin_twi_iface *)data;
 unsigned long flags;

 spin_lock_irqsave(&iface->lock, flags);
 bfin_twi_handle_interrupt(iface);
 if (iface->result == 0) {
  iface->timeout_count--;
  if (iface->timeout_count > 0) {
   iface->timeout_timer.expires = jiffies + POLL_TIMEOUT;
   add_timer(&iface->timeout_timer);
  } else {
   iface->result = -1;
   complete(&iface->complete);
  }
 }
 spin_unlock_irqrestore(&iface->lock, flags);
}
