
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HZ ;
 int USEC_PER_SEC ;
 int schedule_timeout_uninterruptible (long) ;

__attribute__((used)) static void turnaround_delay(unsigned long last_jif, int mtt)
{
 long ticks;

 mtt = mtt < 10000 ? 10000 : mtt;
 ticks = 1 + mtt / (USEC_PER_SEC / HZ);
 schedule_timeout_uninterruptible(ticks);
}
