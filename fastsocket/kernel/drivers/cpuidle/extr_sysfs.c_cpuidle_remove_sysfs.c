
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sys_device {int id; } ;
struct cpuidle_device {int kobj; } ;


 int cpuidle_devices ;
 int kobject_put (int *) ;
 struct cpuidle_device* per_cpu (int ,int) ;

void cpuidle_remove_sysfs(struct sys_device *sysdev)
{
 int cpu = sysdev->id;
 struct cpuidle_device *dev;

 dev = per_cpu(cpuidle_devices, cpu);
 kobject_put(&dev->kobj);
}
