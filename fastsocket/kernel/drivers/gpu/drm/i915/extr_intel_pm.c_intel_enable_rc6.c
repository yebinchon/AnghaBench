
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_device {int dummy; } ;
struct TYPE_2__ {int gen; } ;


 int DRM_DEBUG_DRIVER (char*) ;
 TYPE_1__* INTEL_INFO (struct drm_device const*) ;
 int INTEL_RC6_ENABLE ;
 int INTEL_RC6p_ENABLE ;
 scalar_t__ IS_HASWELL (struct drm_device const*) ;
 scalar_t__ i915_enable_rc6 ;

int intel_enable_rc6(const struct drm_device *dev)
{

 if (i915_enable_rc6 >= 0)
  return i915_enable_rc6;


 if (INTEL_INFO(dev)->gen == 5)
  return 0;

 if (IS_HASWELL(dev)) {
  DRM_DEBUG_DRIVER("Haswell: only RC6 available\n");
  return INTEL_RC6_ENABLE;
 }


 if (INTEL_INFO(dev)->gen == 6) {
  DRM_DEBUG_DRIVER("Sandybridge: deep RC6 disabled\n");
  return INTEL_RC6_ENABLE;
 }

 DRM_DEBUG_DRIVER("RC6 and deep RC6 enabled\n");
 return (INTEL_RC6_ENABLE | INTEL_RC6p_ENABLE);
}
