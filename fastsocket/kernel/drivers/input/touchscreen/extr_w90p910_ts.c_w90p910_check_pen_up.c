
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w90p910_ts {scalar_t__ state; int lock; scalar_t__ ts_reg; } ;


 int ADC_DOWN ;
 scalar_t__ TS_WAIT_NEW_PACKET ;
 int __raw_readl (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int w90p910_report_event (struct w90p910_ts*,int) ;

__attribute__((used)) static void w90p910_check_pen_up(unsigned long data)
{
 struct w90p910_ts *w90p910_ts = (struct w90p910_ts *) data;
 unsigned long flags;

 spin_lock_irqsave(&w90p910_ts->lock, flags);

 if (w90p910_ts->state == TS_WAIT_NEW_PACKET &&
     !(__raw_readl(w90p910_ts->ts_reg + 0x04) & ADC_DOWN)) {

  w90p910_report_event(w90p910_ts, 0);
 }

 spin_unlock_irqrestore(&w90p910_ts->lock, flags);
}
