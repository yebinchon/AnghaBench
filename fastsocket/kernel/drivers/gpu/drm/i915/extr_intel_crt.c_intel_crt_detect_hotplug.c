
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;
struct drm_connector {struct drm_device* dev; } ;


 int CRT_HOTPLUG_FORCE_DETECT ;
 int CRT_HOTPLUG_INT_STATUS ;
 int CRT_HOTPLUG_MONITOR_MASK ;
 int CRT_HOTPLUG_MONITOR_NONE ;
 int DRM_DEBUG_KMS (char*) ;
 scalar_t__ HAS_PCH_SPLIT (struct drm_device*) ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 scalar_t__ IS_G4X (struct drm_device*) ;
 int IS_GM45 (struct drm_device*) ;
 scalar_t__ IS_VALLEYVIEW (struct drm_device*) ;
 int PORT_HOTPLUG_EN ;
 int PORT_HOTPLUG_STAT ;
 int intel_ironlake_crt_detect_hotplug (struct drm_connector*) ;
 int valleyview_crt_detect_hotplug (struct drm_connector*) ;
 scalar_t__ wait_for (int,int) ;

__attribute__((used)) static bool intel_crt_detect_hotplug(struct drm_connector *connector)
{
 struct drm_device *dev = connector->dev;
 struct drm_i915_private *dev_priv = dev->dev_private;
 u32 hotplug_en, orig, stat;
 bool ret = 0;
 int i, tries = 0;

 if (HAS_PCH_SPLIT(dev))
  return intel_ironlake_crt_detect_hotplug(connector);

 if (IS_VALLEYVIEW(dev))
  return valleyview_crt_detect_hotplug(connector);






 if (IS_G4X(dev) && !IS_GM45(dev))
  tries = 2;
 else
  tries = 1;
 hotplug_en = orig = I915_READ(PORT_HOTPLUG_EN);
 hotplug_en |= CRT_HOTPLUG_FORCE_DETECT;

 for (i = 0; i < tries ; i++) {

  I915_WRITE(PORT_HOTPLUG_EN, hotplug_en);

  if (wait_for((I915_READ(PORT_HOTPLUG_EN) &
         CRT_HOTPLUG_FORCE_DETECT) == 0,
        1000))
   DRM_DEBUG_KMS("timed out waiting for FORCE_DETECT to go off");
 }

 stat = I915_READ(PORT_HOTPLUG_STAT);
 if ((stat & CRT_HOTPLUG_MONITOR_MASK) != CRT_HOTPLUG_MONITOR_NONE)
  ret = 1;


 I915_WRITE(PORT_HOTPLUG_STAT, CRT_HOTPLUG_INT_STATUS);


 I915_WRITE(PORT_HOTPLUG_EN, orig);

 return ret;
}
