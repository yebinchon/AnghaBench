
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_ring_buffer {scalar_t__ outstanding_lazy_request; int dev; } ;


 int i915_gem_get_seqno (int ,scalar_t__*) ;

__attribute__((used)) static int
intel_ring_alloc_seqno(struct intel_ring_buffer *ring)
{
 if (ring->outstanding_lazy_request)
  return 0;

 return i915_gem_get_seqno(ring->dev, &ring->outstanding_lazy_request);
}
