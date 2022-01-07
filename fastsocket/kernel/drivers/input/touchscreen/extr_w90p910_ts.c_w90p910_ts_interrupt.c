
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w90p910_ts {int state; int lock; int timer; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;




 int del_timer (int *) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int w90p910_prepare_next_packet (struct w90p910_ts*) ;
 int w90p910_prepare_x_reading (struct w90p910_ts*) ;
 int w90p910_prepare_y_reading (struct w90p910_ts*) ;
 int w90p910_report_event (struct w90p910_ts*,int) ;

__attribute__((used)) static irqreturn_t w90p910_ts_interrupt(int irq, void *dev_id)
{
 struct w90p910_ts *w90p910_ts = dev_id;
 unsigned long flags;

 spin_lock_irqsave(&w90p910_ts->lock, flags);

 switch (w90p910_ts->state) {
 case 130:




  del_timer(&w90p910_ts->timer);
  w90p910_prepare_x_reading(w90p910_ts);
  break;


 case 129:
  w90p910_prepare_y_reading(w90p910_ts);
  break;

 case 128:
  w90p910_report_event(w90p910_ts, 1);
  w90p910_prepare_next_packet(w90p910_ts);
  mod_timer(&w90p910_ts->timer, jiffies + msecs_to_jiffies(100));
  break;

 case 131:
  break;
 }

 spin_unlock_irqrestore(&w90p910_ts->lock, flags);

 return IRQ_HANDLED;
}
