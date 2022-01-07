
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int kobj; } ;


 int pm_attr_group ;
 int sysfs_remove_group (int *,int *) ;

void dpm_sysfs_remove(struct device * dev)
{
 sysfs_remove_group(&dev->kobj, &pm_attr_group);
}
