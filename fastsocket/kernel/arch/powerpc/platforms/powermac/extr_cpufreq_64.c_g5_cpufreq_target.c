
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct cpufreq_policy {int dummy; } ;
struct cpufreq_freqs {scalar_t__ cpu; int new; int old; } ;
struct TYPE_3__ {int frequency; } ;


 int CPUFREQ_POSTCHANGE ;
 int CPUFREQ_PRECHANGE ;
 int EINVAL ;
 scalar_t__ cpufreq_frequency_table_target (struct cpufreq_policy*,TYPE_1__*,unsigned int,unsigned int,unsigned int*) ;
 int cpufreq_notify_transition (struct cpufreq_freqs*,int ) ;
 TYPE_1__* g5_cpu_freqs ;
 unsigned int g5_pmode_cur ;
 int g5_switch_freq (unsigned int) ;
 int g5_switch_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int g5_cpufreq_target(struct cpufreq_policy *policy,
 unsigned int target_freq, unsigned int relation)
{
 unsigned int newstate = 0;
 struct cpufreq_freqs freqs;
 int rc;

 if (cpufreq_frequency_table_target(policy, g5_cpu_freqs,
   target_freq, relation, &newstate))
  return -EINVAL;

 if (g5_pmode_cur == newstate)
  return 0;

 mutex_lock(&g5_switch_mutex);

 freqs.old = g5_cpu_freqs[g5_pmode_cur].frequency;
 freqs.new = g5_cpu_freqs[newstate].frequency;
 freqs.cpu = 0;

 cpufreq_notify_transition(&freqs, CPUFREQ_PRECHANGE);
 rc = g5_switch_freq(newstate);
 cpufreq_notify_transition(&freqs, CPUFREQ_POSTCHANGE);

 mutex_unlock(&g5_switch_mutex);

 return rc;
}
