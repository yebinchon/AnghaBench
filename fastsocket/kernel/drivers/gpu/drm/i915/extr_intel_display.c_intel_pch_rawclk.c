
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;


 int HAS_PCH_SPLIT (struct drm_device*) ;
 int I915_READ (int ) ;
 int PCH_RAWCLK_FREQ ;
 int RAWCLK_FREQ_MASK ;
 int WARN_ON (int) ;

int
intel_pch_rawclk(struct drm_device *dev)
{
 struct drm_i915_private *dev_priv = dev->dev_private;

 WARN_ON(!HAS_PCH_SPLIT(dev));

 return I915_READ(PCH_RAWCLK_FREQ) & RAWCLK_FREQ_MASK;
}
