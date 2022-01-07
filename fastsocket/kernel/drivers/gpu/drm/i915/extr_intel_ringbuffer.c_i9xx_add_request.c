
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_ring_buffer {int outstanding_lazy_request; } ;


 int I915_GEM_HWS_INDEX ;
 int MI_STORE_DWORD_INDEX ;
 int MI_STORE_DWORD_INDEX_SHIFT ;
 int MI_USER_INTERRUPT ;
 int intel_ring_advance (struct intel_ring_buffer*) ;
 int intel_ring_begin (struct intel_ring_buffer*,int) ;
 int intel_ring_emit (struct intel_ring_buffer*,int) ;

__attribute__((used)) static int
i9xx_add_request(struct intel_ring_buffer *ring)
{
 int ret;

 ret = intel_ring_begin(ring, 4);
 if (ret)
  return ret;

 intel_ring_emit(ring, MI_STORE_DWORD_INDEX);
 intel_ring_emit(ring, I915_GEM_HWS_INDEX << MI_STORE_DWORD_INDEX_SHIFT);
 intel_ring_emit(ring, ring->outstanding_lazy_request);
 intel_ring_emit(ring, MI_USER_INTERRUPT);
 intel_ring_advance(ring);

 return 0;
}
