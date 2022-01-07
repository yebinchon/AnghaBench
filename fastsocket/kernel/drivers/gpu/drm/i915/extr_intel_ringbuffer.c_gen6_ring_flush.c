
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u32 ;
struct intel_ring_buffer {int dummy; } ;


 int I915_GEM_GPU_DOMAINS ;
 int I915_GEM_HWS_SCRATCH_ADDR ;
 int MI_FLUSH_DW ;
 int MI_FLUSH_DW_OP_STOREDW ;
 int MI_FLUSH_DW_STORE_INDEX ;
 int MI_FLUSH_DW_USE_GTT ;
 int MI_INVALIDATE_BSD ;
 int MI_INVALIDATE_TLB ;
 int MI_NOOP ;
 int intel_ring_advance (struct intel_ring_buffer*) ;
 int intel_ring_begin (struct intel_ring_buffer*,int) ;
 int intel_ring_emit (struct intel_ring_buffer*,int) ;

__attribute__((used)) static int gen6_ring_flush(struct intel_ring_buffer *ring,
      u32 invalidate, u32 flush)
{
 uint32_t cmd;
 int ret;

 ret = intel_ring_begin(ring, 4);
 if (ret)
  return ret;

 cmd = MI_FLUSH_DW;






 if (invalidate & I915_GEM_GPU_DOMAINS)
  cmd |= MI_INVALIDATE_TLB | MI_INVALIDATE_BSD |
   MI_FLUSH_DW_STORE_INDEX | MI_FLUSH_DW_OP_STOREDW;
 intel_ring_emit(ring, cmd);
 intel_ring_emit(ring, I915_GEM_HWS_SCRATCH_ADDR | MI_FLUSH_DW_USE_GTT);
 intel_ring_emit(ring, 0);
 intel_ring_emit(ring, MI_NOOP);
 intel_ring_advance(ring);
 return 0;
}
