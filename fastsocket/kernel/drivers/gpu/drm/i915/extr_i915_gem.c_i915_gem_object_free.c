
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drm_i915_private {int slab; } ;
struct TYPE_4__ {TYPE_1__* dev; } ;
struct drm_i915_gem_object {TYPE_2__ base; } ;
struct TYPE_3__ {struct drm_i915_private* dev_private; } ;


 int kmem_cache_free (int ,struct drm_i915_gem_object*) ;

void i915_gem_object_free(struct drm_i915_gem_object *obj)
{
 struct drm_i915_private *dev_priv = obj->base.dev->dev_private;
 kmem_cache_free(dev_priv->slab, obj);
}
