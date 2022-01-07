
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* dev; } ;
struct drm_i915_gem_object {scalar_t__ tiling_mode; TYPE_2__ base; } ;
struct TYPE_7__ {scalar_t__ bit_6_swizzle_x; } ;
struct TYPE_8__ {TYPE_3__ mm; } ;
typedef TYPE_4__ drm_i915_private_t ;
struct TYPE_5__ {TYPE_4__* dev_private; } ;


 scalar_t__ I915_BIT_6_SWIZZLE_9_10_17 ;
 scalar_t__ I915_TILING_NONE ;

__attribute__((used)) inline static bool i915_gem_object_needs_bit17_swizzle(struct drm_i915_gem_object *obj)
{
 drm_i915_private_t *dev_priv = obj->base.dev->dev_private;

 return dev_priv->mm.bit_6_swizzle_x == I915_BIT_6_SWIZZLE_9_10_17 &&
  obj->tiling_mode != I915_TILING_NONE;
}
