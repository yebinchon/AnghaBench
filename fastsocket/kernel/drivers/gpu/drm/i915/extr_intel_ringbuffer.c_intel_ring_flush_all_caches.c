
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_ring_buffer {int gpu_caches_dirty; int (* flush ) (struct intel_ring_buffer*,int ,int ) ;} ;


 int I915_GEM_GPU_DOMAINS ;
 int stub1 (struct intel_ring_buffer*,int ,int ) ;
 int trace_i915_gem_ring_flush (struct intel_ring_buffer*,int ,int ) ;

int
intel_ring_flush_all_caches(struct intel_ring_buffer *ring)
{
 int ret;

 if (!ring->gpu_caches_dirty)
  return 0;

 ret = ring->flush(ring, 0, I915_GEM_GPU_DOMAINS);
 if (ret)
  return ret;

 trace_i915_gem_ring_flush(ring, 0, I915_GEM_GPU_DOMAINS);

 ring->gpu_caches_dirty = 0;
 return 0;
}
