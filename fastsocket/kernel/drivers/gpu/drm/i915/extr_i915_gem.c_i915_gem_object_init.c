
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drm_i915_gem_object_ops {int dummy; } ;
struct TYPE_4__ {int size; TYPE_1__* dev; } ;
struct drm_i915_gem_object {int map_and_fenceable; TYPE_2__ base; int madv; int fence_reg; struct drm_i915_gem_object_ops const* ops; int exec_list; int ring_list; int gtt_list; int mm_list; } ;
struct TYPE_3__ {int dev_private; } ;


 int I915_FENCE_REG_NONE ;
 int I915_MADV_WILLNEED ;
 int INIT_LIST_HEAD (int *) ;
 int i915_gem_info_add_obj (int ,int ) ;

void i915_gem_object_init(struct drm_i915_gem_object *obj,
     const struct drm_i915_gem_object_ops *ops)
{
 INIT_LIST_HEAD(&obj->mm_list);
 INIT_LIST_HEAD(&obj->gtt_list);
 INIT_LIST_HEAD(&obj->ring_list);
 INIT_LIST_HEAD(&obj->exec_list);

 obj->ops = ops;

 obj->fence_reg = I915_FENCE_REG_NONE;
 obj->madv = I915_MADV_WILLNEED;

 obj->map_and_fenceable = 1;

 i915_gem_info_add_obj(obj->base.dev->dev_private, obj->base.size);
}
