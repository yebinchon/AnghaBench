
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_ring_buffer {scalar_t__ tail; scalar_t__ virtual_start; } ;


 int iowrite32 (int ,scalar_t__) ;

__attribute__((used)) static inline void intel_ring_emit(struct intel_ring_buffer *ring,
       u32 data)
{
 iowrite32(data, ring->virtual_start + ring->tail);
 ring->tail += 4;
}
