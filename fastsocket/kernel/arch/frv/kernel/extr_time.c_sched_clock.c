
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HZ ;
 int jiffies_64 ;

unsigned long long sched_clock(void)
{
 return jiffies_64 * (1000000000 / HZ);
}
