
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dev; } ;


 int DREF_NONSPREAD_SOURCE_MASK ;
 int DREF_SSC_SOURCE_MASK ;
 int DREF_SUPERSPREAD_SOURCE_MASK ;
 int DRM_DEBUG_DRIVER (char*) ;
 scalar_t__ HAS_PCH_LPT (int ) ;
 int I915_READ (int ) ;
 int PCH_DREF_CONTROL ;
 int WARN (int,char*) ;

__attribute__((used)) static void assert_pch_refclk_enabled(struct drm_i915_private *dev_priv)
{
 u32 val;
 bool enabled;

 if (HAS_PCH_LPT(dev_priv->dev)) {
  DRM_DEBUG_DRIVER("LPT does not has PCH refclk, skipping check\n");
  return;
 }

 val = I915_READ(PCH_DREF_CONTROL);
 enabled = !!(val & (DREF_SSC_SOURCE_MASK | DREF_NONSPREAD_SOURCE_MASK |
       DREF_SUPERSPREAD_SOURCE_MASK));
 WARN(!enabled, "PCH refclk assertion failure, should be active but is disabled\n");
}
