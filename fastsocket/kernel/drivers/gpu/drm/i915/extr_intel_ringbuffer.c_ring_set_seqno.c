
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_ring_buffer {int dummy; } ;


 int I915_GEM_HWS_INDEX ;
 int intel_write_status_page (struct intel_ring_buffer*,int ,int ) ;

__attribute__((used)) static void
ring_set_seqno(struct intel_ring_buffer *ring, u32 seqno)
{
 intel_write_status_page(ring, I915_GEM_HWS_INDEX, seqno);
}
