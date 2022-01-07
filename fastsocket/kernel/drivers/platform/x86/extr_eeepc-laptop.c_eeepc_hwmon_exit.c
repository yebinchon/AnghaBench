
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int kobj; } ;


 struct device* eeepc_hwmon_device ;
 int hwmon_attribute_group ;
 int hwmon_device_unregister (struct device*) ;
 int sysfs_remove_group (int *,int *) ;

__attribute__((used)) static void eeepc_hwmon_exit(void)
{
 struct device *hwmon;

 hwmon = eeepc_hwmon_device;
 if (!hwmon)
  return ;
 sysfs_remove_group(&hwmon->kobj,
      &hwmon_attribute_group);
 hwmon_device_unregister(hwmon);
 eeepc_hwmon_device = ((void*)0);
}
