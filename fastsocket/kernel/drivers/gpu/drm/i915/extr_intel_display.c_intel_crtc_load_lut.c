
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_crtc {int* lut_r; int* lut_g; int* lut_b; int pipe; int active; } ;
struct drm_i915_private {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;
struct drm_crtc {int enabled; struct drm_device* dev; } ;


 scalar_t__ HAS_PCH_SPLIT (struct drm_device*) ;
 int I915_WRITE (int,int) ;
 int LGC_PALETTE (int ) ;
 int PALETTE (int ) ;
 struct intel_crtc* to_intel_crtc (struct drm_crtc*) ;

void intel_crtc_load_lut(struct drm_crtc *crtc)
{
 struct drm_device *dev = crtc->dev;
 struct drm_i915_private *dev_priv = dev->dev_private;
 struct intel_crtc *intel_crtc = to_intel_crtc(crtc);
 int palreg = PALETTE(intel_crtc->pipe);
 int i;


 if (!crtc->enabled || !intel_crtc->active)
  return;


 if (HAS_PCH_SPLIT(dev))
  palreg = LGC_PALETTE(intel_crtc->pipe);

 for (i = 0; i < 256; i++) {
  I915_WRITE(palreg + 4 * i,
      (intel_crtc->lut_r[i] << 16) |
      (intel_crtc->lut_g[i] << 8) |
      intel_crtc->lut_b[i]);
 }
}
