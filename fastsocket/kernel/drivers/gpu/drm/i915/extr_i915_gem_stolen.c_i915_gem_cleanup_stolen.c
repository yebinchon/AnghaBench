
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int stolen; } ;
struct drm_i915_private {TYPE_1__ mm; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;


 int drm_mm_takedown (int *) ;
 int i915_gem_stolen_cleanup_compression (struct drm_device*) ;

void i915_gem_cleanup_stolen(struct drm_device *dev)
{
 struct drm_i915_private *dev_priv = dev->dev_private;

 i915_gem_stolen_cleanup_compression(dev);
 drm_mm_takedown(&dev_priv->mm.stolen);
}
