
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;




 int EINVAL ;
 int blocking_notifier_chain_unregister (int *,struct notifier_block*) ;
 int cpufreq_policy_notifier_list ;
 int cpufreq_transition_notifier_list ;
 int srcu_notifier_chain_unregister (int *,struct notifier_block*) ;

int cpufreq_unregister_notifier(struct notifier_block *nb, unsigned int list)
{
 int ret;

 switch (list) {
 case 128:
  ret = srcu_notifier_chain_unregister(
    &cpufreq_transition_notifier_list, nb);
  break;
 case 129:
  ret = blocking_notifier_chain_unregister(
    &cpufreq_policy_notifier_list, nb);
  break;
 default:
  ret = -EINVAL;
 }

 return ret;
}
