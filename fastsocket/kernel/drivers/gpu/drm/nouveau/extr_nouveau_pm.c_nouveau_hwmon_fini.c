
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nouveau_pm {TYPE_1__* hwmon; } ;
struct drm_device {int dummy; } ;
struct TYPE_2__ {int kobj; } ;


 int hwmon_default_attrgroup ;
 int hwmon_device_unregister (TYPE_1__*) ;
 int hwmon_fan_rpm_attrgroup ;
 int hwmon_pwm_fan_attrgroup ;
 int hwmon_temp_attrgroup ;
 struct nouveau_pm* nouveau_pm (struct drm_device*) ;
 int sysfs_remove_group (int *,int *) ;

__attribute__((used)) static void
nouveau_hwmon_fini(struct drm_device *dev)
{
}
