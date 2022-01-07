
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_policy {int max; } ;




 int CPUFREQ_RELATION_H ;
 int __cpufreq_driver_target (struct cpufreq_policy*,int ,int ) ;
 int dprintk (char*,int ,unsigned int) ;

__attribute__((used)) static int cpufreq_governor_performance(struct cpufreq_policy *policy,
     unsigned int event)
{
 switch (event) {
 case 128:
 case 129:
  dprintk("setting to %u kHz because of event %u\n",
      policy->max, event);
  __cpufreq_driver_target(policy, policy->max,
      CPUFREQ_RELATION_H);
  break;
 default:
  break;
 }
 return 0;
}
