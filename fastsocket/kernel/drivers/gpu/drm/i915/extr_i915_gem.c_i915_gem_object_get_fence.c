
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int fence_list; } ;
struct drm_i915_private {TYPE_2__ mm; struct drm_i915_fence_reg* fence_regs; } ;
struct TYPE_3__ {struct drm_device* dev; } ;
struct drm_i915_gem_object {scalar_t__ tiling_mode; int fence_dirty; size_t fence_reg; TYPE_1__ base; } ;
struct drm_i915_fence_reg {struct drm_i915_gem_object* obj; int lru_list; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;


 int EDEADLK ;
 size_t I915_FENCE_REG_NONE ;
 scalar_t__ I915_TILING_NONE ;
 struct drm_i915_fence_reg* i915_find_fence_reg (struct drm_device*) ;
 int i915_gem_object_fence_lost (struct drm_i915_gem_object*) ;
 int i915_gem_object_update_fence (struct drm_i915_gem_object*,struct drm_i915_fence_reg*,int) ;
 int i915_gem_object_wait_fence (struct drm_i915_gem_object*) ;
 int list_move_tail (int *,int *) ;

int
i915_gem_object_get_fence(struct drm_i915_gem_object *obj)
{
 struct drm_device *dev = obj->base.dev;
 struct drm_i915_private *dev_priv = dev->dev_private;
 bool enable = obj->tiling_mode != I915_TILING_NONE;
 struct drm_i915_fence_reg *reg;
 int ret;




 if (obj->fence_dirty) {
  ret = i915_gem_object_wait_fence(obj);
  if (ret)
   return ret;
 }


 if (obj->fence_reg != I915_FENCE_REG_NONE) {
  reg = &dev_priv->fence_regs[obj->fence_reg];
  if (!obj->fence_dirty) {
   list_move_tail(&reg->lru_list,
           &dev_priv->mm.fence_list);
   return 0;
  }
 } else if (enable) {
  reg = i915_find_fence_reg(dev);
  if (reg == ((void*)0))
   return -EDEADLK;

  if (reg->obj) {
   struct drm_i915_gem_object *old = reg->obj;

   ret = i915_gem_object_wait_fence(old);
   if (ret)
    return ret;

   i915_gem_object_fence_lost(old);
  }
 } else
  return 0;

 i915_gem_object_update_fence(obj, reg, enable);
 obj->fence_dirty = 0;

 return 0;
}
