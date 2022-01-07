
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pipe_control {int * cpu_page; } ;
struct intel_ring_buffer {struct pipe_control* private; } ;



__attribute__((used)) static void
pc_render_set_seqno(struct intel_ring_buffer *ring, u32 seqno)
{
 struct pipe_control *pc = ring->private;
 pc->cpu_page[0] = seqno;
}
