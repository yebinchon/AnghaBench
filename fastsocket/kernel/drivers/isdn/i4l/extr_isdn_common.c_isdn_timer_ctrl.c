
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tflags; int timerlock; int timer; } ;


 scalar_t__ ISDN_TIMER_RES ;
 int ISDN_TIMER_SLOW ;
 TYPE_1__* dev ;
 scalar_t__ isdn_timer_cnt1 ;
 scalar_t__ isdn_timer_cnt2 ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void
isdn_timer_ctrl(int tf, int onoff)
{
 unsigned long flags;
 int old_tflags;

 spin_lock_irqsave(&dev->timerlock, flags);
 if ((tf & ISDN_TIMER_SLOW) && (!(dev->tflags & ISDN_TIMER_SLOW))) {

  isdn_timer_cnt1 = 0;
  isdn_timer_cnt2 = 0;
 }
 old_tflags = dev->tflags;
 if (onoff)
  dev->tflags |= tf;
 else
  dev->tflags &= ~tf;
 if (dev->tflags && !old_tflags)
  mod_timer(&dev->timer, jiffies+ISDN_TIMER_RES);
 spin_unlock_irqrestore(&dev->timerlock, flags);
}
