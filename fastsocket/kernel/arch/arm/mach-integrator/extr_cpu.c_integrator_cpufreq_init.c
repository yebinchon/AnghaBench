
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int max_freq; int min_freq; int transition_latency; } ;
struct cpufreq_policy {int cpu; int max; int min; int cur; TYPE_1__ cpuinfo; } ;


 int integrator_get (int ) ;

__attribute__((used)) static int integrator_cpufreq_init(struct cpufreq_policy *policy)
{


 policy->cpuinfo.max_freq = 160000;
 policy->cpuinfo.min_freq = 12000;
 policy->cpuinfo.transition_latency = 1000000;
 policy->cur = policy->min = policy->max = integrator_get(policy->cpu);

 return 0;
}
