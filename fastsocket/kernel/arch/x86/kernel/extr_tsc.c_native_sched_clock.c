
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int HZ ;
 int INITIAL_JIFFIES ;
 int __cycles_2_ns (int) ;
 int jiffies_64 ;
 int rdtscll (int) ;
 int tsc_disabled ;
 scalar_t__ unlikely (int ) ;

u64 native_sched_clock(void)
{
 u64 this_offset;
 if (unlikely(tsc_disabled)) {

  return (jiffies_64 - INITIAL_JIFFIES) * (1000000000 / HZ);
 }


 rdtscll(this_offset);


 return __cycles_2_ns(this_offset);
}
