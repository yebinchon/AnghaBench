
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long u64 ;
typedef unsigned long long cputime64_t ;


 unsigned long long get_cpu_idle_time_jiffy (unsigned int,unsigned long long*) ;
 unsigned long long get_cpu_idle_time_us (unsigned int,int *) ;
 scalar_t__ get_cpu_iowait_time_us (unsigned int,unsigned long long*) ;

__attribute__((used)) static inline cputime64_t get_cpu_idle_time(unsigned int cpu, cputime64_t *wall)
{
 u64 idle_time = get_cpu_idle_time_us(cpu, ((void*)0));

 if (idle_time == -1ULL)
  return get_cpu_idle_time_jiffy(cpu, wall);
 else
  idle_time += get_cpu_iowait_time_us(cpu, wall);

 return idle_time;
}
