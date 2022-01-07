
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_crt {int force_hotplug_required; int adpa_reg; } ;
struct drm_i915_private {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;
struct drm_connector {struct drm_device* dev; } ;


 int ADPA_CRT_HOTPLUG_MASK ;
 int ADPA_HOTPLUG_BITS ;
 int DRM_DEBUG_KMS (char*,int ) ;
 scalar_t__ HAS_PCH_SPLIT (struct drm_device*) ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int ) ;
 int POSTING_READ (int ) ;
 struct intel_crt* intel_attached_crt (struct drm_connector*) ;

__attribute__((used)) static void intel_crt_reset(struct drm_connector *connector)
{
 struct drm_device *dev = connector->dev;
 struct drm_i915_private *dev_priv = dev->dev_private;
 struct intel_crt *crt = intel_attached_crt(connector);

 if (HAS_PCH_SPLIT(dev)) {
  u32 adpa;

  adpa = I915_READ(crt->adpa_reg);
  adpa &= ~ADPA_CRT_HOTPLUG_MASK;
  adpa |= ADPA_HOTPLUG_BITS;
  I915_WRITE(crt->adpa_reg, adpa);
  POSTING_READ(crt->adpa_reg);

  DRM_DEBUG_KMS("pch crt adpa set to 0x%x\n", adpa);
  crt->force_hotplug_required = 1;
 }

}
