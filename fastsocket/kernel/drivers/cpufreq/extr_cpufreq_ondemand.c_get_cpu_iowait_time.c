
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long u64 ;
typedef unsigned long long cputime64_t ;


 unsigned long long get_cpu_iowait_time_us (unsigned int,unsigned long long*) ;

__attribute__((used)) static inline cputime64_t get_cpu_iowait_time(unsigned int cpu, cputime64_t *wall)
{
 u64 iowait_time = get_cpu_iowait_time_us(cpu, wall);

 if (iowait_time == -1ULL)
  return 0;

 return iowait_time;
}
