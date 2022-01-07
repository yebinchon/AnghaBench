
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HZ ;
 unsigned long jiffies ;
 long schedule_timeout_interruptible (long) ;
 scalar_t__ time_after (long,unsigned long) ;
 int udelay (unsigned long) ;

void tms380tr_wait(unsigned long time)
{
 udelay(time);

 return;
}
