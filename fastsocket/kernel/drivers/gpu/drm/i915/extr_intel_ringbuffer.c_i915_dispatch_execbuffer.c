
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_ring_buffer {int dummy; } ;


 unsigned int I915_DISPATCH_SECURE ;
 int MI_BATCH_BUFFER_START ;
 int MI_BATCH_GTT ;
 int MI_BATCH_NON_SECURE ;
 int intel_ring_advance (struct intel_ring_buffer*) ;
 int intel_ring_begin (struct intel_ring_buffer*,int) ;
 int intel_ring_emit (struct intel_ring_buffer*,int) ;

__attribute__((used)) static int
i915_dispatch_execbuffer(struct intel_ring_buffer *ring,
    u32 offset, u32 len,
    unsigned flags)
{
 int ret;

 ret = intel_ring_begin(ring, 2);
 if (ret)
  return ret;

 intel_ring_emit(ring, MI_BATCH_BUFFER_START | MI_BATCH_GTT);
 intel_ring_emit(ring, offset | (flags & I915_DISPATCH_SECURE ? 0 : MI_BATCH_NON_SECURE));
 intel_ring_advance(ring);

 return 0;
}
