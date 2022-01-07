
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct intel_crtc {int pipe; int lowfreq_avail; } ;
struct drm_i915_private {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;
struct drm_crtc {struct drm_device* dev; } ;
struct TYPE_4__ {int n; int m1; int m2; } ;
typedef TYPE_1__ intel_clock_t ;


 int FP0 (int) ;
 int FP1 (int) ;
 int I915_WRITE (int ,int) ;
 int INTEL_OUTPUT_LVDS ;
 scalar_t__ IS_PINEVIEW (struct drm_device*) ;
 scalar_t__ i915_powersave ;
 scalar_t__ intel_pipe_has_type (struct drm_crtc*,int ) ;
 struct intel_crtc* to_intel_crtc (struct drm_crtc*) ;

__attribute__((used)) static void i9xx_update_pll_dividers(struct drm_crtc *crtc,
         intel_clock_t *clock,
         intel_clock_t *reduced_clock)
{
 struct drm_device *dev = crtc->dev;
 struct drm_i915_private *dev_priv = dev->dev_private;
 struct intel_crtc *intel_crtc = to_intel_crtc(crtc);
 int pipe = intel_crtc->pipe;
 u32 fp, fp2 = 0;

 if (IS_PINEVIEW(dev)) {
  fp = (1 << clock->n) << 16 | clock->m1 << 8 | clock->m2;
  if (reduced_clock)
   fp2 = (1 << reduced_clock->n) << 16 |
    reduced_clock->m1 << 8 | reduced_clock->m2;
 } else {
  fp = clock->n << 16 | clock->m1 << 8 | clock->m2;
  if (reduced_clock)
   fp2 = reduced_clock->n << 16 | reduced_clock->m1 << 8 |
    reduced_clock->m2;
 }

 I915_WRITE(FP0(pipe), fp);

 intel_crtc->lowfreq_avail = 0;
 if (intel_pipe_has_type(crtc, INTEL_OUTPUT_LVDS) &&
     reduced_clock && i915_powersave) {
  I915_WRITE(FP1(pipe), fp2);
  intel_crtc->lowfreq_avail = 1;
 } else {
  I915_WRITE(FP1(pipe), fp);
 }
}
