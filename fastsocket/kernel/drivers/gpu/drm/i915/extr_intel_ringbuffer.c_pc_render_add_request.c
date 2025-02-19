
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pipe_control {int gtt_offset; } ;
struct intel_ring_buffer {int outstanding_lazy_request; struct pipe_control* private; } ;


 int GFX_OP_PIPE_CONTROL (int) ;
 int PIPE_CONTROL_FLUSH (struct intel_ring_buffer*,int) ;
 int PIPE_CONTROL_GLOBAL_GTT ;
 int PIPE_CONTROL_NOTIFY ;
 int PIPE_CONTROL_QW_WRITE ;
 int PIPE_CONTROL_TEXTURE_CACHE_INVALIDATE ;
 int PIPE_CONTROL_WRITE_FLUSH ;
 int intel_ring_advance (struct intel_ring_buffer*) ;
 int intel_ring_begin (struct intel_ring_buffer*,int) ;
 int intel_ring_emit (struct intel_ring_buffer*,int) ;

__attribute__((used)) static int
pc_render_add_request(struct intel_ring_buffer *ring)
{
 struct pipe_control *pc = ring->private;
 u32 scratch_addr = pc->gtt_offset + 128;
 int ret;
 ret = intel_ring_begin(ring, 32);
 if (ret)
  return ret;

 intel_ring_emit(ring, GFX_OP_PIPE_CONTROL(4) | PIPE_CONTROL_QW_WRITE |
   PIPE_CONTROL_WRITE_FLUSH |
   PIPE_CONTROL_TEXTURE_CACHE_INVALIDATE);
 intel_ring_emit(ring, pc->gtt_offset | PIPE_CONTROL_GLOBAL_GTT);
 intel_ring_emit(ring, ring->outstanding_lazy_request);
 intel_ring_emit(ring, 0);
 PIPE_CONTROL_FLUSH(ring, scratch_addr);
 scratch_addr += 128;
 PIPE_CONTROL_FLUSH(ring, scratch_addr);
 scratch_addr += 128;
 PIPE_CONTROL_FLUSH(ring, scratch_addr);
 scratch_addr += 128;
 PIPE_CONTROL_FLUSH(ring, scratch_addr);
 scratch_addr += 128;
 PIPE_CONTROL_FLUSH(ring, scratch_addr);
 scratch_addr += 128;
 PIPE_CONTROL_FLUSH(ring, scratch_addr);

 intel_ring_emit(ring, GFX_OP_PIPE_CONTROL(4) | PIPE_CONTROL_QW_WRITE |
   PIPE_CONTROL_WRITE_FLUSH |
   PIPE_CONTROL_TEXTURE_CACHE_INVALIDATE |
   PIPE_CONTROL_NOTIFY);
 intel_ring_emit(ring, pc->gtt_offset | PIPE_CONTROL_GLOBAL_GTT);
 intel_ring_emit(ring, ring->outstanding_lazy_request);
 intel_ring_emit(ring, 0);
 intel_ring_advance(ring);

 return 0;
}
