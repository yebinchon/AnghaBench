
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* dev; } ;
struct drm_i915_gem_object {int map_and_fenceable; scalar_t__ gtt_offset; int * gtt_space; int gtt_list; int mm_list; scalar_t__ has_aliasing_ppgtt_mapping; scalar_t__ has_global_gtt_mapping; int * pages; scalar_t__ pin_count; TYPE_2__ base; } ;
struct TYPE_7__ {int unbound_list; int aliasing_ppgtt; } ;
struct TYPE_8__ {TYPE_3__ mm; } ;
typedef TYPE_4__ drm_i915_private_t ;
struct TYPE_5__ {TYPE_4__* dev_private; } ;


 int BUG_ON (int ) ;
 int EBUSY ;
 int drm_mm_put_block (int *) ;
 int i915_gem_gtt_finish_object (struct drm_i915_gem_object*) ;
 int i915_gem_gtt_unbind_object (struct drm_i915_gem_object*) ;
 int i915_gem_object_finish_gpu (struct drm_i915_gem_object*) ;
 int i915_gem_object_finish_gtt (struct drm_i915_gem_object*) ;
 int i915_gem_object_put_fence (struct drm_i915_gem_object*) ;
 int i915_ppgtt_unbind_object (int ,struct drm_i915_gem_object*) ;
 int list_del (int *) ;
 int list_move_tail (int *,int *) ;
 int trace_i915_gem_object_unbind (struct drm_i915_gem_object*) ;

int
i915_gem_object_unbind(struct drm_i915_gem_object *obj)
{
 drm_i915_private_t *dev_priv = obj->base.dev->dev_private;
 int ret;

 if (obj->gtt_space == ((void*)0))
  return 0;

 if (obj->pin_count)
  return -EBUSY;

 BUG_ON(obj->pages == ((void*)0));

 ret = i915_gem_object_finish_gpu(obj);
 if (ret)
  return ret;





 i915_gem_object_finish_gtt(obj);


 ret = i915_gem_object_put_fence(obj);
 if (ret)
  return ret;

 trace_i915_gem_object_unbind(obj);

 if (obj->has_global_gtt_mapping)
  i915_gem_gtt_unbind_object(obj);
 if (obj->has_aliasing_ppgtt_mapping) {
  i915_ppgtt_unbind_object(dev_priv->mm.aliasing_ppgtt, obj);
  obj->has_aliasing_ppgtt_mapping = 0;
 }
 i915_gem_gtt_finish_object(obj);

 list_del(&obj->mm_list);
 list_move_tail(&obj->gtt_list, &dev_priv->mm.unbound_list);

 obj->map_and_fenceable = 1;

 drm_mm_put_block(obj->gtt_space);
 obj->gtt_space = ((void*)0);
 obj->gtt_offset = 0;

 return 0;
}
