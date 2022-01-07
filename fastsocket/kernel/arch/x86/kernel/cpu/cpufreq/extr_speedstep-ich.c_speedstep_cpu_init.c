
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct get_freqs {int ret; struct cpufreq_policy* policy; } ;
struct cpufreq_policy {unsigned int cur; int cpu; int cpus; } ;
struct TYPE_4__ {unsigned int frequency; } ;


 int EIO ;
 size_t SPEEDSTEP_LOW ;
 int cpu_online_mask ;
 int cpu_sibling_mask (int ) ;
 int cpufreq_frequency_table_cpuinfo (struct cpufreq_policy*,TYPE_1__*) ;
 int cpufreq_frequency_table_get_attr (TYPE_1__*,int ) ;
 unsigned int cpumask_any_and (int ,int ) ;
 int cpumask_copy (int ,int ) ;
 int dprintk (char*,char*,unsigned int) ;
 int get_freqs_on_cpu ;
 int smp_call_function_single (unsigned int,int ,struct get_freqs*,int) ;
 TYPE_1__* speedstep_freqs ;
 unsigned int speedstep_get (unsigned int) ;

__attribute__((used)) static int speedstep_cpu_init(struct cpufreq_policy *policy)
{
 int result;
 unsigned int policy_cpu, speed;
 struct get_freqs gf;





 policy_cpu = cpumask_any_and(policy->cpus, cpu_online_mask);


 gf.policy = policy;
 smp_call_function_single(policy_cpu, get_freqs_on_cpu, &gf, 1);
 if (gf.ret)
  return gf.ret;


 speed = speedstep_get(policy_cpu);
 if (!speed)
  return -EIO;

 dprintk("currently at %s speed setting - %i MHz\n",
  (speed == speedstep_freqs[SPEEDSTEP_LOW].frequency)
  ? "low" : "high",
  (speed / 1000));


 policy->cur = speed;

 result = cpufreq_frequency_table_cpuinfo(policy, speedstep_freqs);
 if (result)
  return result;

 cpufreq_frequency_table_get_attr(speedstep_freqs, policy->cpu);

 return 0;
}
