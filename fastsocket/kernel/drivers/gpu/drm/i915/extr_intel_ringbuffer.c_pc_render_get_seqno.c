
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pipe_control {int * cpu_page; } ;
struct intel_ring_buffer {struct pipe_control* private; } ;



__attribute__((used)) static u32
pc_render_get_seqno(struct intel_ring_buffer *ring, bool lazy_coherency)
{
 struct pipe_control *pc = ring->private;
 return pc->cpu_page[0];
}
