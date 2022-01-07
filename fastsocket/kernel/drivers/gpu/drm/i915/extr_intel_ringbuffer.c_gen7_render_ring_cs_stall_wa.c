
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_ring_buffer {int dummy; } ;


 int GFX_OP_PIPE_CONTROL (int) ;
 int PIPE_CONTROL_CS_STALL ;
 int PIPE_CONTROL_STALL_AT_SCOREBOARD ;
 int intel_ring_advance (struct intel_ring_buffer*) ;
 int intel_ring_begin (struct intel_ring_buffer*,int) ;
 int intel_ring_emit (struct intel_ring_buffer*,int) ;

__attribute__((used)) static int
gen7_render_ring_cs_stall_wa(struct intel_ring_buffer *ring)
{
 int ret;

 ret = intel_ring_begin(ring, 4);
 if (ret)
  return ret;

 intel_ring_emit(ring, GFX_OP_PIPE_CONTROL(4));
 intel_ring_emit(ring, PIPE_CONTROL_CS_STALL |
         PIPE_CONTROL_STALL_AT_SCOREBOARD);
 intel_ring_emit(ring, 0);
 intel_ring_emit(ring, 0);
 intel_ring_advance(ring);

 return 0;
}
