
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drm_i915_private {int * fence_regs; } ;
struct TYPE_4__ {TYPE_1__* dev; } ;
struct drm_i915_gem_object {size_t fence_reg; TYPE_2__ base; } ;
struct TYPE_3__ {struct drm_i915_private* dev_private; } ;


 size_t I915_FENCE_REG_NONE ;
 int i915_gem_object_fence_lost (struct drm_i915_gem_object*) ;
 int i915_gem_object_update_fence (struct drm_i915_gem_object*,int *,int) ;
 int i915_gem_object_wait_fence (struct drm_i915_gem_object*) ;

int
i915_gem_object_put_fence(struct drm_i915_gem_object *obj)
{
 struct drm_i915_private *dev_priv = obj->base.dev->dev_private;
 int ret;

 ret = i915_gem_object_wait_fence(obj);
 if (ret)
  return ret;

 if (obj->fence_reg == I915_FENCE_REG_NONE)
  return 0;

 i915_gem_object_update_fence(obj,
         &dev_priv->fence_regs[obj->fence_reg],
         0);
 i915_gem_object_fence_lost(obj);

 return 0;
}
