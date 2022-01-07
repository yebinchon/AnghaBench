
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct intel_ring_buffer {scalar_t__* sync_seqno; int (* sync_to ) (struct intel_ring_buffer*,struct intel_ring_buffer*,scalar_t__) ;} ;
struct TYPE_2__ {int dev; } ;
struct drm_i915_gem_object {scalar_t__ last_read_seqno; struct intel_ring_buffer* ring; TYPE_1__ base; } ;


 int i915_gem_check_olr (struct intel_ring_buffer*,scalar_t__) ;
 int i915_gem_object_wait_rendering (struct drm_i915_gem_object*,int) ;
 int i915_semaphore_is_enabled (int ) ;
 int intel_ring_sync_index (struct intel_ring_buffer*,struct intel_ring_buffer*) ;
 int stub1 (struct intel_ring_buffer*,struct intel_ring_buffer*,scalar_t__) ;

int
i915_gem_object_sync(struct drm_i915_gem_object *obj,
       struct intel_ring_buffer *to)
{
 struct intel_ring_buffer *from = obj->ring;
 u32 seqno;
 int ret, idx;

 if (from == ((void*)0) || to == from)
  return 0;

 if (to == ((void*)0) || !i915_semaphore_is_enabled(obj->base.dev))
  return i915_gem_object_wait_rendering(obj, 0);

 idx = intel_ring_sync_index(from, to);

 seqno = obj->last_read_seqno;
 if (seqno <= from->sync_seqno[idx])
  return 0;

 ret = i915_gem_check_olr(obj->ring, seqno);
 if (ret)
  return ret;

 ret = to->sync_to(to, from, seqno);
 if (!ret)




  from->sync_seqno[idx] = obj->last_read_seqno;

 return ret;
}
