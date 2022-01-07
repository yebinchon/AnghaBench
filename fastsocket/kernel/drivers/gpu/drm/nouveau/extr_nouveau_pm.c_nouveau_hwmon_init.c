
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nouveau_therm {scalar_t__ (* temp_get ) (struct nouveau_therm*) ;scalar_t__ (* fan_get ) (struct nouveau_therm*) ;scalar_t__ (* fan_sense ) (struct nouveau_therm*) ;int attr_set; int attr_get; } ;
struct nouveau_pm {struct device* hwmon; } ;
struct nouveau_drm {int device; } ;
struct drm_device {TYPE_1__* pdev; } ;
struct device {int kobj; } ;
struct TYPE_2__ {int dev; } ;


 int ENODEV ;
 scalar_t__ IS_ERR (struct device*) ;
 int NV_ERROR (struct nouveau_drm*,char*,int) ;
 int PTR_ERR (struct device*) ;
 int dev_set_drvdata (struct device*,struct drm_device*) ;
 int hwmon_default_attrgroup ;
 struct device* hwmon_device_register (int *) ;
 int hwmon_device_unregister (struct device*) ;
 int hwmon_fan_rpm_attrgroup ;
 int hwmon_pwm_fan_attrgroup ;
 int hwmon_temp_attrgroup ;
 struct nouveau_drm* nouveau_drm (struct drm_device*) ;
 struct nouveau_pm* nouveau_pm (struct drm_device*) ;
 struct nouveau_therm* nouveau_therm (int ) ;
 scalar_t__ stub1 (struct nouveau_therm*) ;
 scalar_t__ stub2 (struct nouveau_therm*) ;
 scalar_t__ stub3 (struct nouveau_therm*) ;
 int sysfs_create_group (int *,int *) ;

__attribute__((used)) static int
nouveau_hwmon_init(struct drm_device *dev)
{
 struct nouveau_pm *pm = nouveau_pm(dev);
 pm->hwmon = ((void*)0);
 return 0;

}
