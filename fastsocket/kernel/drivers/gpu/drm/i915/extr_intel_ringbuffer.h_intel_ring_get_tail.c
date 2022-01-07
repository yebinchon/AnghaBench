
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_ring_buffer {int tail; } ;



__attribute__((used)) static inline u32 intel_ring_get_tail(struct intel_ring_buffer *ring)
{
 return ring->tail;
}
