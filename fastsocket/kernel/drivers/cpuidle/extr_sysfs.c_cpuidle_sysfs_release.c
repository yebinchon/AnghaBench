
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct cpuidle_device {int kobj_unregister; } ;


 int complete (int *) ;
 struct cpuidle_device* kobj_to_cpuidledev (struct kobject*) ;

__attribute__((used)) static void cpuidle_sysfs_release(struct kobject *kobj)
{
 struct cpuidle_device *dev = kobj_to_cpuidledev(kobj);

 complete(&dev->kobj_unregister);
}
