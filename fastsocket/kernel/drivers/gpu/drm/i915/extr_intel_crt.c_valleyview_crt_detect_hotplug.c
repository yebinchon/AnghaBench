
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_crt {int adpa_reg; } ;
struct drm_i915_private {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;
struct drm_connector {struct drm_device* dev; } ;


 int ADPA_CRT_HOTPLUG_FORCE_TRIGGER ;
 int ADPA_CRT_HOTPLUG_MONITOR_MASK ;
 int DRM_DEBUG_KMS (char*,...) ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 struct intel_crt* intel_attached_crt (struct drm_connector*) ;
 scalar_t__ wait_for (int,int) ;

__attribute__((used)) static bool valleyview_crt_detect_hotplug(struct drm_connector *connector)
{
 struct drm_device *dev = connector->dev;
 struct intel_crt *crt = intel_attached_crt(connector);
 struct drm_i915_private *dev_priv = dev->dev_private;
 u32 adpa;
 bool ret;
 u32 save_adpa;

 save_adpa = adpa = I915_READ(crt->adpa_reg);
 DRM_DEBUG_KMS("trigger hotplug detect cycle: adpa=0x%x\n", adpa);

 adpa |= ADPA_CRT_HOTPLUG_FORCE_TRIGGER;

 I915_WRITE(crt->adpa_reg, adpa);

 if (wait_for((I915_READ(crt->adpa_reg) & ADPA_CRT_HOTPLUG_FORCE_TRIGGER) == 0,
       1000)) {
  DRM_DEBUG_KMS("timed out waiting for FORCE_TRIGGER");
  I915_WRITE(crt->adpa_reg, save_adpa);
 }


 adpa = I915_READ(crt->adpa_reg);
 if ((adpa & ADPA_CRT_HOTPLUG_MONITOR_MASK) != 0)
  ret = 1;
 else
  ret = 0;

 DRM_DEBUG_KMS("valleyview hotplug adpa=0x%x, result %d\n", adpa, ret);


 ret = 1;

 return ret;
}
