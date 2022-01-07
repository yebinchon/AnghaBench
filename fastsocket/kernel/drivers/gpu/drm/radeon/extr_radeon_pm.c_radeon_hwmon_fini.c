
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {TYPE_2__* int_hwmon_dev; } ;
struct radeon_device {TYPE_1__ pm; } ;
struct TYPE_4__ {int kobj; } ;


 int hwmon_attrgroup ;
 int hwmon_device_unregister (TYPE_2__*) ;
 int sysfs_remove_group (int *,int *) ;

__attribute__((used)) static void radeon_hwmon_fini(struct radeon_device *rdev)
{
 if (rdev->pm.int_hwmon_dev) {
  sysfs_remove_group(&rdev->pm.int_hwmon_dev->kobj, &hwmon_attrgroup);
  hwmon_device_unregister(rdev->pm.int_hwmon_dev);
 }
}
