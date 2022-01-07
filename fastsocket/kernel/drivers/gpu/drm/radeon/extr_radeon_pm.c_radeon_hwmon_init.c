
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int int_thermal_type; TYPE_2__* int_hwmon_dev; } ;
struct radeon_device {int dev; TYPE_1__ pm; int ddev; int family; } ;
struct TYPE_7__ {int kobj; } ;


 int CHIP_ARUBA ;
 int IS_ERR (TYPE_2__*) ;
 int PTR_ERR (TYPE_2__*) ;






 int dev_err (int ,char*,int) ;
 int dev_set_drvdata (TYPE_2__*,int ) ;
 int hwmon_attrgroup ;
 TYPE_2__* hwmon_device_register (int ) ;
 int hwmon_device_unregister (int ) ;
 int sysfs_create_group (int *,int *) ;

__attribute__((used)) static int radeon_hwmon_init(struct radeon_device *rdev)
{
 int err = 0;

 rdev->pm.int_hwmon_dev = ((void*)0);

 switch (rdev->pm.int_thermal_type) {
 case 131:
 case 130:
 case 133:
 case 132:
 case 128:
 case 129:

  if (rdev->family == CHIP_ARUBA)
   return err;
  rdev->pm.int_hwmon_dev = hwmon_device_register(rdev->dev);
  if (IS_ERR(rdev->pm.int_hwmon_dev)) {
   err = PTR_ERR(rdev->pm.int_hwmon_dev);
   dev_err(rdev->dev,
    "Unable to register hwmon device: %d\n", err);
   break;
  }
  dev_set_drvdata(rdev->pm.int_hwmon_dev, rdev->ddev);
  err = sysfs_create_group(&rdev->pm.int_hwmon_dev->kobj,
      &hwmon_attrgroup);
  if (err) {
   dev_err(rdev->dev,
    "Unable to create hwmon sysfs file: %d\n", err);
   hwmon_device_unregister(rdev->dev);
  }
  break;
 default:
  break;
 }

 return err;
}
