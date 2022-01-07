
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fence_list; } ;
struct drm_i915_private {TYPE_1__ mm; } ;
struct TYPE_4__ {struct drm_device* dev; } ;
struct drm_i915_gem_object {int fence_reg; TYPE_2__ base; } ;
struct drm_i915_fence_reg {int lru_list; struct drm_i915_gem_object* obj; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;


 scalar_t__ HAS_LLC (struct drm_device*) ;
 int I915_FENCE_REG_NONE ;
 int fence_number (struct drm_i915_private*,struct drm_i915_fence_reg*) ;
 int i915_gem_write_fence (struct drm_device*,int,struct drm_i915_gem_object*) ;
 int i915_gem_write_fence__ipi ;
 int list_del_init (int *) ;
 int list_move_tail (int *,int *) ;
 int on_each_cpu (int ,int *,int) ;

__attribute__((used)) static void i915_gem_object_update_fence(struct drm_i915_gem_object *obj,
      struct drm_i915_fence_reg *fence,
      bool enable)
{
 struct drm_device *dev = obj->base.dev;
 struct drm_i915_private *dev_priv = dev->dev_private;
 int fence_reg = fence_number(dev_priv, fence);
 if (HAS_LLC(obj->base.dev))
  on_each_cpu(i915_gem_write_fence__ipi, ((void*)0), 1);
 i915_gem_write_fence(dev, fence_reg, enable ? obj : ((void*)0));

 if (enable) {
  obj->fence_reg = fence_reg;
  fence->obj = obj;
  list_move_tail(&fence->lru_list, &dev_priv->mm.fence_list);
 } else {
  obj->fence_reg = I915_FENCE_REG_NONE;
  fence->obj = ((void*)0);
  list_del_init(&fence->lru_list);
 }
}
