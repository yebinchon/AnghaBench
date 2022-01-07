
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct intel_crtc {int cursor_visible; } ;
struct drm_i915_private {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;
struct drm_crtc {struct drm_device* dev; } ;


 scalar_t__ CURSOR_ENABLE ;
 scalar_t__ CURSOR_FORMAT_ARGB ;
 scalar_t__ CURSOR_FORMAT_MASK ;
 scalar_t__ CURSOR_GAMMA_ENABLE ;
 scalar_t__ I915_READ (int ) ;
 int I915_WRITE (int ,scalar_t__) ;
 int _CURABASE ;
 int _CURACNTR ;
 struct intel_crtc* to_intel_crtc (struct drm_crtc*) ;

__attribute__((used)) static void i845_update_cursor(struct drm_crtc *crtc, u32 base)
{
 struct drm_device *dev = crtc->dev;
 struct drm_i915_private *dev_priv = dev->dev_private;
 struct intel_crtc *intel_crtc = to_intel_crtc(crtc);
 bool visible = base != 0;
 u32 cntl;

 if (intel_crtc->cursor_visible == visible)
  return;

 cntl = I915_READ(_CURACNTR);
 if (visible) {



  I915_WRITE(_CURABASE, base);

  cntl &= ~(CURSOR_FORMAT_MASK);

  cntl |= CURSOR_ENABLE |
   CURSOR_GAMMA_ENABLE |
   CURSOR_FORMAT_ARGB;
 } else
  cntl &= ~(CURSOR_ENABLE | CURSOR_GAMMA_ENABLE);
 I915_WRITE(_CURACNTR, cntl);

 intel_crtc->cursor_visible = visible;
}
