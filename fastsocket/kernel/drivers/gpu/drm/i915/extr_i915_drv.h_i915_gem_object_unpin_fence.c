
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct drm_i915_private {TYPE_3__* fence_regs; } ;
struct TYPE_5__ {TYPE_1__* dev; } ;
struct drm_i915_gem_object {scalar_t__ fence_reg; TYPE_2__ base; } ;
struct TYPE_6__ {int pin_count; } ;
struct TYPE_4__ {struct drm_i915_private* dev_private; } ;


 scalar_t__ I915_FENCE_REG_NONE ;

__attribute__((used)) static inline void
i915_gem_object_unpin_fence(struct drm_i915_gem_object *obj)
{
 if (obj->fence_reg != I915_FENCE_REG_NONE) {
  struct drm_i915_private *dev_priv = obj->base.dev->dev_private;
  dev_priv->fence_regs[obj->fence_reg].pin_count--;
 }
}
