
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct drm_i915_private {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;


 int DRM_DEBUG_KMS (char*,int ) ;
 int DRM_ERROR (char*) ;
 int I915_READ (int ) ;
 int LCPLL_CD_SOURCE_FCLK ;
 int LCPLL_CTL ;
 int LCPLL_PLL_DISABLE ;
 int intel_ddi_get_cdclk_freq (struct drm_i915_private*) ;

void intel_ddi_pll_init(struct drm_device *dev)
{
 struct drm_i915_private *dev_priv = dev->dev_private;
 uint32_t val = I915_READ(LCPLL_CTL);






 DRM_DEBUG_KMS("CDCLK running at %dMHz\n",
        intel_ddi_get_cdclk_freq(dev_priv));

 if (val & LCPLL_CD_SOURCE_FCLK)
  DRM_ERROR("CDCLK source is not LCPLL\n");

 if (val & LCPLL_PLL_DISABLE)
  DRM_ERROR("LCPLL is disabled\n");
}
