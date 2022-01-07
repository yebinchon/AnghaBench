
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct notifier_block {int dummy; } ;
struct cpufreq_policy {int cpu; } ;
struct cpufreq_frequency_table {int frequency; } ;


 unsigned long CPUFREQ_START ;
 size_t cbe_cpu_to_node (int ) ;
 struct cpufreq_frequency_table* cpufreq_frequency_get_table (int ) ;
 int cpufreq_verify_within_limits (struct cpufreq_policy*,int ,int ) ;
 size_t* pmi_slow_mode_limit ;
 int pr_debug (char*,size_t,size_t) ;

__attribute__((used)) static int pmi_notifier(struct notifier_block *nb,
           unsigned long event, void *data)
{
 struct cpufreq_policy *policy = data;
 struct cpufreq_frequency_table *cbe_freqs;
 u8 node;




 if (event == CPUFREQ_START)
  return 0;

 cbe_freqs = cpufreq_frequency_get_table(policy->cpu);
 node = cbe_cpu_to_node(policy->cpu);

 pr_debug("got notified, event=%lu, node=%u\n", event, node);

 if (pmi_slow_mode_limit[node] != 0) {
  pr_debug("limiting node %d to slow mode %d\n",
    node, pmi_slow_mode_limit[node]);

  cpufreq_verify_within_limits(policy, 0,

   cbe_freqs[pmi_slow_mode_limit[node]].frequency);
 }

 return 0;
}
