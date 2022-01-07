
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct intel_crtc {int pipe; } ;
struct drm_device {TYPE_1__* dev_private; } ;
struct drm_crtc {struct drm_device* dev; } ;
struct TYPE_3__ {int lvds_downclock_avail; } ;
typedef TYPE_1__ drm_i915_private_t ;


 int DISPLAY_RATE_SELECT_FPA1 ;
 int DPLL (int) ;
 int DRM_DEBUG_DRIVER (char*) ;
 scalar_t__ HAS_PCH_SPLIT (struct drm_device*) ;
 int HAS_PIPE_CXSR (struct drm_device*) ;
 int I915_READ (int) ;
 int I915_WRITE (int,int) ;
 int assert_panel_unlocked (TYPE_1__*,int) ;
 int intel_wait_for_vblank (struct drm_device*,int) ;
 struct intel_crtc* to_intel_crtc (struct drm_crtc*) ;

__attribute__((used)) static void intel_increase_pllclock(struct drm_crtc *crtc)
{
 struct drm_device *dev = crtc->dev;
 drm_i915_private_t *dev_priv = dev->dev_private;
 struct intel_crtc *intel_crtc = to_intel_crtc(crtc);
 int pipe = intel_crtc->pipe;
 int dpll_reg = DPLL(pipe);
 int dpll;

 if (HAS_PCH_SPLIT(dev))
  return;

 if (!dev_priv->lvds_downclock_avail)
  return;

 dpll = I915_READ(dpll_reg);
 if (!HAS_PIPE_CXSR(dev) && (dpll & DISPLAY_RATE_SELECT_FPA1)) {
  DRM_DEBUG_DRIVER("upclocking LVDS\n");

  assert_panel_unlocked(dev_priv, pipe);

  dpll &= ~DISPLAY_RATE_SELECT_FPA1;
  I915_WRITE(dpll_reg, dpll);
  intel_wait_for_vblank(dev, pipe);

  dpll = I915_READ(dpll_reg);
  if (dpll & DISPLAY_RATE_SELECT_FPA1)
   DRM_DEBUG_DRIVER("failed to upclock LVDS!\n");
 }
}
