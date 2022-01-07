
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int slab; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;


 int GFP_KERNEL ;
 int __GFP_ZERO ;
 void* kmem_cache_alloc (int ,int) ;

void *i915_gem_object_alloc(struct drm_device *dev)
{
 struct drm_i915_private *dev_priv = dev->dev_private;
 return kmem_cache_alloc(dev_priv->slab, GFP_KERNEL | __GFP_ZERO);
}
