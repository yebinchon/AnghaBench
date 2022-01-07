
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_crtc {int primary_disabled; int plane; } ;
struct drm_i915_private {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;
struct drm_crtc {struct drm_device* dev; } ;


 int DISPLAY_PLANE_ENABLE ;
 int DSPCNTR (int ) ;
 int I915_READ (int) ;
 int I915_WRITE (int,int) ;
 int intel_update_fbc (struct drm_device*) ;
 struct intel_crtc* to_intel_crtc (struct drm_crtc*) ;

__attribute__((used)) static void
intel_disable_primary(struct drm_crtc *crtc)
{
 struct drm_device *dev = crtc->dev;
 struct drm_i915_private *dev_priv = dev->dev_private;
 struct intel_crtc *intel_crtc = to_intel_crtc(crtc);
 int reg = DSPCNTR(intel_crtc->plane);

 if (intel_crtc->primary_disabled)
  return;

 I915_WRITE(reg, I915_READ(reg) & ~DISPLAY_PLANE_ENABLE);

 intel_crtc->primary_disabled = 1;
 intel_update_fbc(dev);
}
