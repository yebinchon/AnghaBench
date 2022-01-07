
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int kobj; } ;


 scalar_t__ IS_ERR (struct device*) ;
 int PTR_ERR (struct device*) ;
 struct device* eeepc_hwmon_device ;
 int eeepc_hwmon_exit () ;
 int hwmon_attribute_group ;
 struct device* hwmon_device_register (struct device*) ;
 int pr_err (char*) ;
 int sysfs_create_group (int *,int *) ;

__attribute__((used)) static int eeepc_hwmon_init(struct device *dev)
{
 struct device *hwmon;
 int result;

 hwmon = hwmon_device_register(dev);
 if (IS_ERR(hwmon)) {
  pr_err("Could not register eeepc hwmon device\n");
  eeepc_hwmon_device = ((void*)0);
  return PTR_ERR(hwmon);
 }
 eeepc_hwmon_device = hwmon;
 result = sysfs_create_group(&hwmon->kobj,
        &hwmon_attribute_group);
 if (result)
  eeepc_hwmon_exit();
 return result;
}
