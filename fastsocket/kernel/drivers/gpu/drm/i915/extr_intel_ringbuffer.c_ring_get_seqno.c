
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_ring_buffer {int dummy; } ;


 int I915_GEM_HWS_INDEX ;
 int intel_read_status_page (struct intel_ring_buffer*,int ) ;

__attribute__((used)) static u32
ring_get_seqno(struct intel_ring_buffer *ring, bool lazy_coherency)
{
 return intel_read_status_page(ring, I915_GEM_HWS_INDEX);
}
