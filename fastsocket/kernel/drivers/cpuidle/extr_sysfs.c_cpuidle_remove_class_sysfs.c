
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int kobj; } ;
struct sysdev_class {TYPE_1__ kset; } ;


 int cpuclass_attr_group ;
 int sysfs_remove_group (int *,int *) ;

void cpuidle_remove_class_sysfs(struct sysdev_class *cls)
{
 sysfs_remove_group(&cls->kset.kobj, &cpuclass_attr_group);
}
