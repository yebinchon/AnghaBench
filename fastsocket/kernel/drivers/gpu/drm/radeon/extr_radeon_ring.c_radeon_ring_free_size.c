
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct radeon_ring {int rptr_offs; int rptr; int ptr_reg_mask; int ptr_reg_shift; int ring_free_dw; int ring_size; int ptr_mask; scalar_t__ wptr; int rptr_reg; } ;
struct TYPE_2__ {int * wb; scalar_t__ enabled; } ;
struct radeon_device {TYPE_1__ wb; } ;


 int RREG32 (int ) ;
 int le32_to_cpu (int ) ;

void radeon_ring_free_size(struct radeon_device *rdev, struct radeon_ring *ring)
{
 u32 rptr;

 if (rdev->wb.enabled)
  rptr = le32_to_cpu(rdev->wb.wb[ring->rptr_offs/4]);
 else
  rptr = RREG32(ring->rptr_reg);
 ring->rptr = (rptr & ring->ptr_reg_mask) >> ring->ptr_reg_shift;

 ring->ring_free_dw = (ring->rptr + (ring->ring_size / 4));
 ring->ring_free_dw -= ring->wptr;
 ring->ring_free_dw &= ring->ptr_mask;
 if (!ring->ring_free_dw) {
  ring->ring_free_dw = ring->ring_size / 4;
 }
}
