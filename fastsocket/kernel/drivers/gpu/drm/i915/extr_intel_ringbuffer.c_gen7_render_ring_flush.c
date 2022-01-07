
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct pipe_control {scalar_t__ gtt_offset; } ;
struct intel_ring_buffer {struct pipe_control* private; } ;


 scalar_t__ GFX_OP_PIPE_CONTROL (int) ;
 scalar_t__ PIPE_CONTROL_CONST_CACHE_INVALIDATE ;
 scalar_t__ PIPE_CONTROL_CS_STALL ;
 scalar_t__ PIPE_CONTROL_DEPTH_CACHE_FLUSH ;
 scalar_t__ PIPE_CONTROL_GLOBAL_GTT_IVB ;
 scalar_t__ PIPE_CONTROL_INSTRUCTION_CACHE_INVALIDATE ;
 scalar_t__ PIPE_CONTROL_QW_WRITE ;
 scalar_t__ PIPE_CONTROL_RENDER_TARGET_CACHE_FLUSH ;
 scalar_t__ PIPE_CONTROL_STATE_CACHE_INVALIDATE ;
 scalar_t__ PIPE_CONTROL_TEXTURE_CACHE_INVALIDATE ;
 scalar_t__ PIPE_CONTROL_TLB_INVALIDATE ;
 scalar_t__ PIPE_CONTROL_VF_CACHE_INVALIDATE ;
 int gen7_render_ring_cs_stall_wa (struct intel_ring_buffer*) ;
 int intel_ring_advance (struct intel_ring_buffer*) ;
 int intel_ring_begin (struct intel_ring_buffer*,int) ;
 int intel_ring_emit (struct intel_ring_buffer*,scalar_t__) ;

__attribute__((used)) static int
gen7_render_ring_flush(struct intel_ring_buffer *ring,
         u32 invalidate_domains, u32 flush_domains)
{
 u32 flags = 0;
 struct pipe_control *pc = ring->private;
 u32 scratch_addr = pc->gtt_offset + 128;
 int ret;
 flags |= PIPE_CONTROL_CS_STALL;





 if (flush_domains) {
  flags |= PIPE_CONTROL_RENDER_TARGET_CACHE_FLUSH;
  flags |= PIPE_CONTROL_DEPTH_CACHE_FLUSH;
 }
 if (invalidate_domains) {
  flags |= PIPE_CONTROL_TLB_INVALIDATE;
  flags |= PIPE_CONTROL_INSTRUCTION_CACHE_INVALIDATE;
  flags |= PIPE_CONTROL_TEXTURE_CACHE_INVALIDATE;
  flags |= PIPE_CONTROL_VF_CACHE_INVALIDATE;
  flags |= PIPE_CONTROL_CONST_CACHE_INVALIDATE;
  flags |= PIPE_CONTROL_STATE_CACHE_INVALIDATE;



  flags |= PIPE_CONTROL_QW_WRITE;
  flags |= PIPE_CONTROL_GLOBAL_GTT_IVB;




  gen7_render_ring_cs_stall_wa(ring);
 }

 ret = intel_ring_begin(ring, 4);
 if (ret)
  return ret;

 intel_ring_emit(ring, GFX_OP_PIPE_CONTROL(4));
 intel_ring_emit(ring, flags);
 intel_ring_emit(ring, scratch_addr);
 intel_ring_emit(ring, 0);
 intel_ring_advance(ring);

 return 0;
}
