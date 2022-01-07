
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_ring_buffer {int dummy; } ;


 int i915_gem_retire_requests_ring (struct intel_ring_buffer*) ;
 int i915_wait_seqno (struct intel_ring_buffer*,int ) ;

__attribute__((used)) static int intel_ring_wait_seqno(struct intel_ring_buffer *ring, u32 seqno)
{
 int ret;

 ret = i915_wait_seqno(ring, seqno);
 if (!ret)
  i915_gem_retire_requests_ring(ring);

 return ret;
}
