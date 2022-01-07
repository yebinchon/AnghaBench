
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;


 int FDI_PLL_BIOS_0 ;
 int FDI_PLL_FB_CLOCK_MASK ;
 int I915_READ (int ) ;
 scalar_t__ IS_GEN5 (struct drm_device*) ;

__attribute__((used)) static inline u32
intel_fdi_link_freq(struct drm_device *dev)
{
 if (IS_GEN5(dev)) {
  struct drm_i915_private *dev_priv = dev->dev_private;
  return (I915_READ(FDI_PLL_BIOS_0) & FDI_PLL_FB_CLOCK_MASK) + 2;
 } else
  return 27;
}
