
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* u32 ;
struct intel_ring_buffer {int active_list; } ;
struct TYPE_3__ {int fence_list; int active_list; } ;
struct drm_i915_private {TYPE_1__ mm; struct drm_i915_fence_reg* fence_regs; } ;
struct TYPE_4__ {struct drm_device* dev; } ;
struct drm_i915_gem_object {int active; size_t fence_reg; void* last_fenced_seqno; scalar_t__ fenced_gpu_access; void* last_read_seqno; int ring_list; int mm_list; TYPE_2__ base; struct intel_ring_buffer* ring; } ;
struct drm_i915_fence_reg {int lru_list; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;


 int BUG_ON (int ) ;
 size_t I915_FENCE_REG_NONE ;
 int drm_gem_object_reference (TYPE_2__*) ;
 void* intel_ring_get_seqno (struct intel_ring_buffer*) ;
 int list_move_tail (int *,int *) ;

void
i915_gem_object_move_to_active(struct drm_i915_gem_object *obj,
          struct intel_ring_buffer *ring)
{
 struct drm_device *dev = obj->base.dev;
 struct drm_i915_private *dev_priv = dev->dev_private;
 u32 seqno = intel_ring_get_seqno(ring);

 BUG_ON(ring == ((void*)0));
 obj->ring = ring;


 if (!obj->active) {
  drm_gem_object_reference(&obj->base);
  obj->active = 1;
 }


 list_move_tail(&obj->mm_list, &dev_priv->mm.active_list);
 list_move_tail(&obj->ring_list, &ring->active_list);

 obj->last_read_seqno = seqno;

 if (obj->fenced_gpu_access) {
  obj->last_fenced_seqno = seqno;


  if (obj->fence_reg != I915_FENCE_REG_NONE) {
   struct drm_i915_fence_reg *reg;

   reg = &dev_priv->fence_regs[obj->fence_reg];
   list_move_tail(&reg->lru_list,
           &dev_priv->mm.fence_list);
  }
 }
}
