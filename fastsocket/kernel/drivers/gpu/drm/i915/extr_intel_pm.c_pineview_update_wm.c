
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef unsigned long u32 ;
struct drm_i915_private {int mem_freq; int fsb_freq; int is_ddr3; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;
struct TYPE_8__ {int clock; } ;
struct drm_crtc {TYPE_2__* fb; TYPE_1__ mode; } ;
struct cxsr_latency {int cursor_hpll_disable; int display_hpll_disable; int cursor_sr; int display_sr; } ;
struct TYPE_10__ {int fifo_size; } ;
struct TYPE_9__ {int bits_per_pixel; } ;


 int DRM_DEBUG_KMS (char*,...) ;
 int DSPFW1 ;
 int DSPFW3 ;
 unsigned long DSPFW_CURSOR_SR_MASK ;
 unsigned long DSPFW_CURSOR_SR_SHIFT ;
 unsigned long DSPFW_HPLL_CURSOR_MASK ;
 unsigned long DSPFW_HPLL_CURSOR_SHIFT ;
 unsigned long DSPFW_HPLL_SR_MASK ;
 unsigned long DSPFW_SR_MASK ;
 unsigned long DSPFW_SR_SHIFT ;
 unsigned long I915_READ (int ) ;
 int I915_WRITE (int ,unsigned long) ;
 int IS_PINEVIEW_G (struct drm_device*) ;
 unsigned long PINEVIEW_SELF_REFRESH_EN ;
 unsigned long intel_calculate_wm (int,TYPE_3__*,int ,int,int ) ;
 struct cxsr_latency* intel_get_cxsr_latency (int ,int ,int ,int ) ;
 TYPE_3__ pineview_cursor_hplloff_wm ;
 TYPE_3__ pineview_cursor_wm ;
 int pineview_disable_cxsr (struct drm_device*) ;
 TYPE_3__ pineview_display_hplloff_wm ;
 TYPE_3__ pineview_display_wm ;
 struct drm_crtc* single_enabled_crtc (struct drm_device*) ;

__attribute__((used)) static void pineview_update_wm(struct drm_device *dev)
{
 struct drm_i915_private *dev_priv = dev->dev_private;
 struct drm_crtc *crtc;
 const struct cxsr_latency *latency;
 u32 reg;
 unsigned long wm;

 latency = intel_get_cxsr_latency(IS_PINEVIEW_G(dev), dev_priv->is_ddr3,
      dev_priv->fsb_freq, dev_priv->mem_freq);
 if (!latency) {
  DRM_DEBUG_KMS("Unknown FSB/MEM found, disable CxSR\n");
  pineview_disable_cxsr(dev);
  return;
 }

 crtc = single_enabled_crtc(dev);
 if (crtc) {
  int clock = crtc->mode.clock;
  int pixel_size = crtc->fb->bits_per_pixel / 8;


  wm = intel_calculate_wm(clock, &pineview_display_wm,
     pineview_display_wm.fifo_size,
     pixel_size, latency->display_sr);
  reg = I915_READ(DSPFW1);
  reg &= ~DSPFW_SR_MASK;
  reg |= wm << DSPFW_SR_SHIFT;
  I915_WRITE(DSPFW1, reg);
  DRM_DEBUG_KMS("DSPFW1 register is %x\n", reg);


  wm = intel_calculate_wm(clock, &pineview_cursor_wm,
     pineview_display_wm.fifo_size,
     pixel_size, latency->cursor_sr);
  reg = I915_READ(DSPFW3);
  reg &= ~DSPFW_CURSOR_SR_MASK;
  reg |= (wm & 0x3f) << DSPFW_CURSOR_SR_SHIFT;
  I915_WRITE(DSPFW3, reg);


  wm = intel_calculate_wm(clock, &pineview_display_hplloff_wm,
     pineview_display_hplloff_wm.fifo_size,
     pixel_size, latency->display_hpll_disable);
  reg = I915_READ(DSPFW3);
  reg &= ~DSPFW_HPLL_SR_MASK;
  reg |= wm & DSPFW_HPLL_SR_MASK;
  I915_WRITE(DSPFW3, reg);


  wm = intel_calculate_wm(clock, &pineview_cursor_hplloff_wm,
     pineview_display_hplloff_wm.fifo_size,
     pixel_size, latency->cursor_hpll_disable);
  reg = I915_READ(DSPFW3);
  reg &= ~DSPFW_HPLL_CURSOR_MASK;
  reg |= (wm & 0x3f) << DSPFW_HPLL_CURSOR_SHIFT;
  I915_WRITE(DSPFW3, reg);
  DRM_DEBUG_KMS("DSPFW3 register is %x\n", reg);


  I915_WRITE(DSPFW3,
      I915_READ(DSPFW3) | PINEVIEW_SELF_REFRESH_EN);
  DRM_DEBUG_KMS("Self-refresh is enabled\n");
 } else {
  pineview_disable_cxsr(dev);
  DRM_DEBUG_KMS("Self-refresh is disabled\n");
 }
}
