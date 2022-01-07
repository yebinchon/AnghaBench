
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ide_activity ;
 scalar_t__ jiffies ;
 int ledtrig_ide_timer ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int) ;
 int timer_pending (int *) ;

void ledtrig_ide_activity(void)
{
 ide_activity++;
 if (!timer_pending(&ledtrig_ide_timer))
  mod_timer(&ledtrig_ide_timer, jiffies + msecs_to_jiffies(10));
}
