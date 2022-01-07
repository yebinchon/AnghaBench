
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct cpufreq_policy {int cpu; int cur; } ;
struct cpufreq_freqs {int cpu; int new; int old; } ;
struct TYPE_3__ {int index; int frequency; } ;


 int CPUFREQ_POSTCHANGE ;
 int CPUFREQ_PRECHANGE ;
 TYPE_1__* cbe_freqs ;
 int cbe_switch_mutex ;
 int cpufreq_frequency_table_target (struct cpufreq_policy*,TYPE_1__*,unsigned int,unsigned int,unsigned int*) ;
 int cpufreq_notify_transition (struct cpufreq_freqs*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_debug (char*,int ,int ,int ) ;
 int set_pmode (int ,unsigned int) ;

__attribute__((used)) static int cbe_cpufreq_target(struct cpufreq_policy *policy,
         unsigned int target_freq,
         unsigned int relation)
{
 int rc;
 struct cpufreq_freqs freqs;
 unsigned int cbe_pmode_new;

 cpufreq_frequency_table_target(policy,
           cbe_freqs,
           target_freq,
           relation,
           &cbe_pmode_new);

 freqs.old = policy->cur;
 freqs.new = cbe_freqs[cbe_pmode_new].frequency;
 freqs.cpu = policy->cpu;

 mutex_lock(&cbe_switch_mutex);
 cpufreq_notify_transition(&freqs, CPUFREQ_PRECHANGE);

 pr_debug("setting frequency for cpu %d to %d kHz, " "1/%d of max frequency\n",

   policy->cpu,
   cbe_freqs[cbe_pmode_new].frequency,
   cbe_freqs[cbe_pmode_new].index);

 rc = set_pmode(policy->cpu, cbe_pmode_new);

 cpufreq_notify_transition(&freqs, CPUFREQ_POSTCHANGE);
 mutex_unlock(&cbe_switch_mutex);

 return rc;
}
