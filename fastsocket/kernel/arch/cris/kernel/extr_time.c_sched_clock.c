
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HZ ;
 unsigned long long get_ns_in_jiffie () ;
 scalar_t__ jiffies ;

unsigned long long sched_clock(void)
{
 return (unsigned long long)jiffies * (1000000000 / HZ) +
  get_ns_in_jiffie();
}
