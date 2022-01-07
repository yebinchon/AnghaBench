
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_policy {int dummy; } ;


 int EINVAL ;
 scalar_t__ cpufreq_frequency_table_target (struct cpufreq_policy*,int ,unsigned int,unsigned int,unsigned int*) ;
 unsigned long cur_freq ;
 int do_set_cpu_speed (unsigned int,int) ;
 int pmac_cpu_freqs ;
 unsigned long ppc_proc_freq ;

__attribute__((used)) static int pmac_cpufreq_target( struct cpufreq_policy *policy,
     unsigned int target_freq,
     unsigned int relation)
{
 unsigned int newstate = 0;
 int rc;

 if (cpufreq_frequency_table_target(policy, pmac_cpu_freqs,
   target_freq, relation, &newstate))
  return -EINVAL;

 rc = do_set_cpu_speed(newstate, 1);

 ppc_proc_freq = cur_freq * 1000ul;
 return rc;
}
