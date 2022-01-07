
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int cputime64_t ;
struct TYPE_3__ {int nice; int iowait; int idle; } ;
struct TYPE_4__ {TYPE_1__ cpustat; } ;


 int cputime64_add (int ,int ) ;
 TYPE_2__ kstat_cpu (unsigned int) ;
 scalar_t__ rackmeter_ignore_nice ;

__attribute__((used)) static inline cputime64_t get_cpu_idle_time(unsigned int cpu)
{
 cputime64_t retval;

 retval = cputime64_add(kstat_cpu(cpu).cpustat.idle,
   kstat_cpu(cpu).cpustat.iowait);

 if (rackmeter_ignore_nice)
  retval = cputime64_add(retval, kstat_cpu(cpu).cpustat.nice);

 return retval;
}
