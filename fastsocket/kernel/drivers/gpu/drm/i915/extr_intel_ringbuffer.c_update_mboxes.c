
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_ring_buffer {int outstanding_lazy_request; } ;


 int MI_LOAD_REGISTER_IMM (int) ;
 int intel_ring_emit (struct intel_ring_buffer*,int ) ;

__attribute__((used)) static void
update_mboxes(struct intel_ring_buffer *ring,
       u32 mmio_offset)
{
 intel_ring_emit(ring, MI_LOAD_REGISTER_IMM(1));
 intel_ring_emit(ring, mmio_offset);
 intel_ring_emit(ring, ring->outstanding_lazy_request);
}
