
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HZ ;
 scalar_t__ jiffies ;
 int ledtrig_tx_timer ;
 int mod_timer (int *,scalar_t__) ;
 int timer_pending (int *) ;
 int tx_activity ;

__attribute__((used)) static void at76_ledtrig_tx_activity(void)
{
 tx_activity++;
 if (!timer_pending(&ledtrig_tx_timer))
  mod_timer(&ledtrig_tx_timer, jiffies + HZ / 4);
}
