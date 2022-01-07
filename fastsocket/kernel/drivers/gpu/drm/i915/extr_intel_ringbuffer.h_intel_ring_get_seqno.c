
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct intel_ring_buffer {scalar_t__ outstanding_lazy_request; } ;


 int BUG_ON (int) ;

__attribute__((used)) static inline u32 intel_ring_get_seqno(struct intel_ring_buffer *ring)
{
 BUG_ON(ring->outstanding_lazy_request == 0);
 return ring->outstanding_lazy_request;
}
