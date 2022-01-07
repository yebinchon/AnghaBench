
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_ring {int wptr; int align_mask; int ptr_reg_shift; int ptr_reg_mask; int wptr_reg; int nop; } ;
struct radeon_device {int dummy; } ;


 int DRM_MEMORYBARRIER () ;
 int RREG32 (int ) ;
 int WREG32 (int ,int) ;
 int radeon_ring_write (struct radeon_ring*,int ) ;

void radeon_ring_commit(struct radeon_device *rdev, struct radeon_ring *ring)
{

 while (ring->wptr & ring->align_mask) {
  radeon_ring_write(ring, ring->nop);
 }
 DRM_MEMORYBARRIER();
 WREG32(ring->wptr_reg, (ring->wptr << ring->ptr_reg_shift) & ring->ptr_reg_mask);
 (void)RREG32(ring->wptr_reg);
}
