
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;
struct drm_crtc {struct drm_device* dev; } ;


 int DP_A ;
 int DP_PLL_FREQ_160MHZ ;
 int DP_PLL_FREQ_270MHZ ;
 int DP_PLL_FREQ_MASK ;
 int DRM_DEBUG_KMS (char*,...) ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int ) ;
 int POSTING_READ (int ) ;
 int udelay (int) ;

__attribute__((used)) static void ironlake_set_pll_edp(struct drm_crtc *crtc, int clock)
{
 struct drm_device *dev = crtc->dev;
 struct drm_i915_private *dev_priv = dev->dev_private;
 u32 dpa_ctl;

 DRM_DEBUG_KMS("eDP PLL enable for clock %d\n", clock);
 dpa_ctl = I915_READ(DP_A);
 dpa_ctl &= ~DP_PLL_FREQ_MASK;

 if (clock < 200000) {



  DRM_DEBUG_KMS("160MHz cpu eDP clock, might need ilk devA w/a\n");
  dpa_ctl |= DP_PLL_FREQ_160MHZ;
 } else {
  dpa_ctl |= DP_PLL_FREQ_270MHZ;
 }

 I915_WRITE(DP_A, dpa_ctl);

 POSTING_READ(DP_A);
 udelay(500);
}
