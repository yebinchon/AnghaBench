
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pipe_control {int gtt_offset; } ;
struct intel_ring_buffer {struct pipe_control* private; } ;


 int GFX_OP_PIPE_CONTROL (int) ;
 int PIPE_CONTROL_CONST_CACHE_INVALIDATE ;
 int PIPE_CONTROL_CS_STALL ;
 int PIPE_CONTROL_DEPTH_CACHE_FLUSH ;
 int PIPE_CONTROL_GLOBAL_GTT ;
 int PIPE_CONTROL_INSTRUCTION_CACHE_INVALIDATE ;
 int PIPE_CONTROL_QW_WRITE ;
 int PIPE_CONTROL_RENDER_TARGET_CACHE_FLUSH ;
 int PIPE_CONTROL_STATE_CACHE_INVALIDATE ;
 int PIPE_CONTROL_TEXTURE_CACHE_INVALIDATE ;
 int PIPE_CONTROL_TLB_INVALIDATE ;
 int PIPE_CONTROL_VF_CACHE_INVALIDATE ;
 int intel_emit_post_sync_nonzero_flush (struct intel_ring_buffer*) ;
 int intel_ring_advance (struct intel_ring_buffer*) ;
 int intel_ring_begin (struct intel_ring_buffer*,int) ;
 int intel_ring_emit (struct intel_ring_buffer*,int) ;

__attribute__((used)) static int
gen6_render_ring_flush(struct intel_ring_buffer *ring,
                         u32 invalidate_domains, u32 flush_domains)
{
 u32 flags = 0;
 struct pipe_control *pc = ring->private;
 u32 scratch_addr = pc->gtt_offset + 128;
 int ret;


 ret = intel_emit_post_sync_nonzero_flush(ring);
 if (ret)
  return ret;





 if (flush_domains) {
  flags |= PIPE_CONTROL_RENDER_TARGET_CACHE_FLUSH;
  flags |= PIPE_CONTROL_DEPTH_CACHE_FLUSH;




  flags |= PIPE_CONTROL_CS_STALL;
 }
 if (invalidate_domains) {
  flags |= PIPE_CONTROL_TLB_INVALIDATE;
  flags |= PIPE_CONTROL_INSTRUCTION_CACHE_INVALIDATE;
  flags |= PIPE_CONTROL_TEXTURE_CACHE_INVALIDATE;
  flags |= PIPE_CONTROL_VF_CACHE_INVALIDATE;
  flags |= PIPE_CONTROL_CONST_CACHE_INVALIDATE;
  flags |= PIPE_CONTROL_STATE_CACHE_INVALIDATE;



  flags |= PIPE_CONTROL_QW_WRITE | PIPE_CONTROL_CS_STALL;
 }

 ret = intel_ring_begin(ring, 4);
 if (ret)
  return ret;

 intel_ring_emit(ring, GFX_OP_PIPE_CONTROL(4));
 intel_ring_emit(ring, flags);
 intel_ring_emit(ring, scratch_addr | PIPE_CONTROL_GLOBAL_GTT);
 intel_ring_emit(ring, 0);
 intel_ring_advance(ring);

 return 0;
}
