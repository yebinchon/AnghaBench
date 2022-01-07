
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct drm_device {int dummy; } ;


 int DRM_DEBUG_DRIVER (char*,scalar_t__) ;
 scalar_t__ _intel_panel_get_max_backlight (struct drm_device*) ;
 int pr_warn_once (char*) ;

u32 intel_panel_get_max_backlight(struct drm_device *dev)
{
 u32 max;

 max = _intel_panel_get_max_backlight(dev);
 if (max == 0) {



  pr_warn_once("fixme: max PWM is zero\n");
  return 1;
 }

 DRM_DEBUG_DRIVER("max backlight PWM = %d\n", max);
 return max;
}
