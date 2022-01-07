
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {scalar_t__ gpio_mmio_base; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;


 scalar_t__ GMBUS0 ;
 scalar_t__ GMBUS4 ;
 int I915_WRITE (scalar_t__,int ) ;

void
intel_i2c_reset(struct drm_device *dev)
{
 struct drm_i915_private *dev_priv = dev->dev_private;
 I915_WRITE(dev_priv->gpio_mmio_base + GMBUS0, 0);
 I915_WRITE(dev_priv->gpio_mmio_base + GMBUS4, 0);
}
