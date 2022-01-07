
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int kobj; } ;
struct sysdev_class {TYPE_1__ kset; } ;
struct TYPE_5__ {int attrs; } ;


 TYPE_2__ cpuclass_attr_group ;
 int cpuclass_switch_attrs ;
 int sysfs_create_group (int *,TYPE_2__*) ;
 scalar_t__ sysfs_switch ;

int cpuidle_add_class_sysfs(struct sysdev_class *cls)
{
 if (sysfs_switch)
  cpuclass_attr_group.attrs = cpuclass_switch_attrs;

 return sysfs_create_group(&cls->kset.kobj, &cpuclass_attr_group);
}
