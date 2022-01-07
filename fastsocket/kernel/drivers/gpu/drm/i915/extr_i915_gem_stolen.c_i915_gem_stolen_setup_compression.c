
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ stolen_base; } ;
struct drm_i915_private {int cfb_size; TYPE_1__ mm; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;


 int ENODEV ;
 int i915_gem_stolen_cleanup_compression (struct drm_device*) ;
 int i915_setup_compression (struct drm_device*,int) ;

int i915_gem_stolen_setup_compression(struct drm_device *dev, int size)
{
 struct drm_i915_private *dev_priv = dev->dev_private;

 if (dev_priv->mm.stolen_base == 0)
  return -ENODEV;

 if (size < dev_priv->cfb_size)
  return 0;


 i915_gem_stolen_cleanup_compression(dev);

 return i915_setup_compression(dev, size);
}
