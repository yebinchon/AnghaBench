
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nouveau_therm {int (* fan_set ) (struct nouveau_therm*,scalar_t__) ;} ;
struct nouveau_pm_level {scalar_t__ fanspeed; scalar_t__ volt_min; } ;
struct TYPE_2__ {scalar_t__ supported; } ;
struct nouveau_pm {int (* voltage_set ) (struct drm_device*,scalar_t__) ;TYPE_1__ voltage; } ;
struct nouveau_drm {int device; } ;
struct drm_device {int dummy; } ;


 int ENODEV ;
 int NV_ERROR (struct nouveau_drm*,char*,int) ;
 struct nouveau_drm* nouveau_drm (struct drm_device*) ;
 struct nouveau_pm* nouveau_pm (struct drm_device*) ;
 struct nouveau_therm* nouveau_therm (int ) ;
 int stub1 (struct nouveau_therm*,scalar_t__) ;
 int stub2 (struct drm_device*,scalar_t__) ;

__attribute__((used)) static int
nouveau_pm_perflvl_aux(struct drm_device *dev, struct nouveau_pm_level *perflvl,
         struct nouveau_pm_level *a, struct nouveau_pm_level *b)
{
 struct nouveau_drm *drm = nouveau_drm(dev);
 struct nouveau_pm *pm = nouveau_pm(dev);
 struct nouveau_therm *therm = nouveau_therm(drm->device);
 int ret;





 if (therm && therm->fan_set &&
  a->fanspeed && b->fanspeed && b->fanspeed > a->fanspeed) {
  ret = therm->fan_set(therm, perflvl->fanspeed);
  if (ret && ret != -ENODEV) {
   NV_ERROR(drm, "fanspeed set failed: %d\n", ret);
  }
 }

 if (pm->voltage.supported && pm->voltage_set) {
  if (perflvl->volt_min && b->volt_min > a->volt_min) {
   ret = pm->voltage_set(dev, perflvl->volt_min);
   if (ret) {
    NV_ERROR(drm, "voltage set failed: %d\n", ret);
    return ret;
   }
  }
 }

 return 0;
}
