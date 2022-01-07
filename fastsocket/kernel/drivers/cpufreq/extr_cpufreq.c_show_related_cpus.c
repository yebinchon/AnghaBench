
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_policy {int related_cpus; int cpus; } ;
typedef int ssize_t ;


 scalar_t__ cpumask_empty (int ) ;
 int show_cpus (int ,char*) ;

__attribute__((used)) static ssize_t show_related_cpus(struct cpufreq_policy *policy, char *buf)
{
 if (cpumask_empty(policy->related_cpus))
  return show_cpus(policy->cpus, buf);
 return show_cpus(policy->related_cpus, buf);
}
