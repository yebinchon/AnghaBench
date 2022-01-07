
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct radeon_ring {int ring_free_dw; int count_dw; int ptr_mask; int wptr; int * ring; } ;



__attribute__((used)) static inline void radeon_ring_write(struct radeon_ring *ring, uint32_t v)
{
 ring->ring[ring->wptr++] = v;
 ring->wptr &= ring->ptr_mask;
 ring->count_dw--;
 ring->ring_free_dw--;
}
