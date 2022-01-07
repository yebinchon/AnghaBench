
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HZ ;
 int blank_timer_expired ;
 int blankinterval ;
 int console_timer ;
 int console_work ;
 scalar_t__ jiffies ;
 int keventd_up () ;
 int mod_timer (int *,scalar_t__) ;
 int schedule_work (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void blank_screen_t(unsigned long dummy)
{
 if (unlikely(!keventd_up())) {
  mod_timer(&console_timer, jiffies + (blankinterval * HZ));
  return;
 }
 blank_timer_expired = 1;
 schedule_work(&console_work);
}
