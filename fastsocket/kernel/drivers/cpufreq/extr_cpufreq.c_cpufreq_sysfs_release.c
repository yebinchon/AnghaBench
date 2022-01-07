
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct cpufreq_policy {int kobj_unregister; } ;


 int complete (int *) ;
 int dprintk (char*) ;
 struct cpufreq_policy* to_policy (struct kobject*) ;

__attribute__((used)) static void cpufreq_sysfs_release(struct kobject *kobj)
{
 struct cpufreq_policy *policy = to_policy(kobj);
 dprintk("last reference is dropped\n");
 complete(&policy->kobj_unregister);
}
