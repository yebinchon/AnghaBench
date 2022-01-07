
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct freq_attr {int (* show ) (struct cpufreq_policy*,char*) ;} ;
struct cpufreq_policy {int cpu; } ;
struct attribute {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 int EIO ;
 struct cpufreq_policy* cpufreq_cpu_get (int ) ;
 int cpufreq_cpu_put (struct cpufreq_policy*) ;
 scalar_t__ lock_policy_rwsem_read (int ) ;
 int stub1 (struct cpufreq_policy*,char*) ;
 struct freq_attr* to_attr (struct attribute*) ;
 struct cpufreq_policy* to_policy (struct kobject*) ;
 int unlock_policy_rwsem_read (int ) ;

__attribute__((used)) static ssize_t show(struct kobject *kobj, struct attribute *attr, char *buf)
{
 struct cpufreq_policy *policy = to_policy(kobj);
 struct freq_attr *fattr = to_attr(attr);
 ssize_t ret = -EINVAL;
 policy = cpufreq_cpu_get(policy->cpu);
 if (!policy)
  goto no_policy;

 if (lock_policy_rwsem_read(policy->cpu) < 0)
  goto fail;

 if (fattr->show)
  ret = fattr->show(policy, buf);
 else
  ret = -EIO;

 unlock_policy_rwsem_read(policy->cpu);
fail:
 cpufreq_cpu_put(policy);
no_policy:
 return ret;
}
