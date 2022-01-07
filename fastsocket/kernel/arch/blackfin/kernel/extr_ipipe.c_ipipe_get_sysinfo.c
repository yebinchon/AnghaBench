
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tmfreq; int tmirq; } ;
struct ipipe_sysinfo {int cpufreq; TYPE_1__ archdep; int ncpus; } ;


 int IPIPE_TIMER_IRQ ;
 int ipipe_cpu_freq () ;
 int num_online_cpus () ;

int ipipe_get_sysinfo(struct ipipe_sysinfo *info)
{
 info->ncpus = num_online_cpus();
 info->cpufreq = ipipe_cpu_freq();
 info->archdep.tmirq = IPIPE_TIMER_IRQ;
 info->archdep.tmfreq = info->cpufreq;

 return 0;
}
