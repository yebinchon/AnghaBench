
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pipe_control {int gtt_offset; } ;
struct intel_ring_buffer {struct pipe_control* private; } ;


 int GFX_OP_PIPE_CONTROL (int) ;
 int MI_NOOP ;
 int PIPE_CONTROL_CS_STALL ;
 int PIPE_CONTROL_GLOBAL_GTT ;
 int PIPE_CONTROL_QW_WRITE ;
 int PIPE_CONTROL_STALL_AT_SCOREBOARD ;
 int intel_ring_advance (struct intel_ring_buffer*) ;
 int intel_ring_begin (struct intel_ring_buffer*,int) ;
 int intel_ring_emit (struct intel_ring_buffer*,int) ;

__attribute__((used)) static int
intel_emit_post_sync_nonzero_flush(struct intel_ring_buffer *ring)
{
 struct pipe_control *pc = ring->private;
 u32 scratch_addr = pc->gtt_offset + 128;
 int ret;


 ret = intel_ring_begin(ring, 6);
 if (ret)
  return ret;

 intel_ring_emit(ring, GFX_OP_PIPE_CONTROL(5));
 intel_ring_emit(ring, PIPE_CONTROL_CS_STALL |
   PIPE_CONTROL_STALL_AT_SCOREBOARD);
 intel_ring_emit(ring, scratch_addr | PIPE_CONTROL_GLOBAL_GTT);
 intel_ring_emit(ring, 0);
 intel_ring_emit(ring, 0);
 intel_ring_emit(ring, MI_NOOP);
 intel_ring_advance(ring);

 ret = intel_ring_begin(ring, 6);
 if (ret)
  return ret;

 intel_ring_emit(ring, GFX_OP_PIPE_CONTROL(5));
 intel_ring_emit(ring, PIPE_CONTROL_QW_WRITE);
 intel_ring_emit(ring, scratch_addr | PIPE_CONTROL_GLOBAL_GTT);
 intel_ring_emit(ring, 0);
 intel_ring_emit(ring, 0);
 intel_ring_emit(ring, MI_NOOP);
 intel_ring_advance(ring);

 return 0;
}
