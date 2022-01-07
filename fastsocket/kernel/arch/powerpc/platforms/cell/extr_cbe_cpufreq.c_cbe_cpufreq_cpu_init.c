
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct device_node {int dummy; } ;
struct TYPE_5__ {int transition_latency; } ;
struct cpufreq_policy {int cpu; int cur; int cpus; TYPE_1__ cpuinfo; } ;
struct TYPE_6__ {int frequency; int index; } ;


 int CPUFREQ_TABLE_END ;
 int EINVAL ;
 int ENODEV ;
 int cbe_cpufreq_get_pmode (int) ;
 TYPE_2__* cbe_freqs ;
 int cbe_get_cpu_mic_tm_regs (int) ;
 int cbe_get_cpu_pmd_regs (int) ;
 int cpu_sibling_map ;
 int cpufreq_frequency_table_cpuinfo (struct cpufreq_policy*,TYPE_2__*) ;
 int cpufreq_frequency_table_get_attr (TYPE_2__*,int) ;
 int cpumask_copy (int ,int *) ;
 struct device_node* of_get_cpu_node (int,int *) ;
 int* of_get_property (struct device_node*,char*,int *) ;
 int of_node_put (struct device_node*) ;
 int per_cpu (int ,int) ;
 int pr_debug (char*,...) ;
 int pr_info (char*) ;

__attribute__((used)) static int cbe_cpufreq_cpu_init(struct cpufreq_policy *policy)
{
 const u32 *max_freqp;
 u32 max_freq;
 int i, cur_pmode;
 struct device_node *cpu;

 cpu = of_get_cpu_node(policy->cpu, ((void*)0));

 if (!cpu)
  return -ENODEV;

 pr_debug("init cpufreq on CPU %d\n", policy->cpu);




 if (!cbe_get_cpu_pmd_regs(policy->cpu) ||
     !cbe_get_cpu_mic_tm_regs(policy->cpu)) {
  pr_info("invalid CBE regs pointers for cpufreq\n");
  return -EINVAL;
 }

 max_freqp = of_get_property(cpu, "clock-frequency", ((void*)0));

 of_node_put(cpu);

 if (!max_freqp)
  return -EINVAL;


 max_freq = *max_freqp / 1000;

 pr_debug("max clock-frequency is at %u kHz\n", max_freq);
 pr_debug("initializing frequency table\n");


 for (i=0; cbe_freqs[i].frequency!=CPUFREQ_TABLE_END; i++) {
  cbe_freqs[i].frequency = max_freq / cbe_freqs[i].index;
  pr_debug("%d: %d\n", i, cbe_freqs[i].frequency);
 }



 policy->cpuinfo.transition_latency = 25000;

 cur_pmode = cbe_cpufreq_get_pmode(policy->cpu);
 pr_debug("current pmode is at %d\n",cur_pmode);

 policy->cur = cbe_freqs[cur_pmode].frequency;





 cpufreq_frequency_table_get_attr(cbe_freqs, policy->cpu);



 return cpufreq_frequency_table_cpuinfo(policy, cbe_freqs);
}
