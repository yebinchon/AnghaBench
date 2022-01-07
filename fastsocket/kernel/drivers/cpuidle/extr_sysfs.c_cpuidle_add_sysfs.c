
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sys_device {int id; int kobj; } ;
struct cpuidle_device {int kobj; } ;


 int KOBJ_ADD ;
 int cpuidle_devices ;
 int kobject_init_and_add (int *,int *,int *,char*) ;
 int kobject_uevent (int *,int ) ;
 int ktype_cpuidle ;
 struct cpuidle_device* per_cpu (int ,int) ;

int cpuidle_add_sysfs(struct sys_device *sysdev)
{
 int cpu = sysdev->id;
 struct cpuidle_device *dev;
 int error;

 dev = per_cpu(cpuidle_devices, cpu);
 error = kobject_init_and_add(&dev->kobj, &ktype_cpuidle, &sysdev->kobj,
         "cpuidle");
 if (!error)
  kobject_uevent(&dev->kobj, KOBJ_ADD);
 return error;
}
