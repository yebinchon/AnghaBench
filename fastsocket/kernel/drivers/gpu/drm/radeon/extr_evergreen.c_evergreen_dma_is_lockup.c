
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_ring {int dummy; } ;
struct radeon_device {int dummy; } ;


 int RADEON_RESET_DMA ;
 int evergreen_gpu_check_soft_reset (struct radeon_device*) ;
 int radeon_ring_force_activity (struct radeon_device*,struct radeon_ring*) ;
 int radeon_ring_lockup_update (struct radeon_ring*) ;
 int radeon_ring_test_lockup (struct radeon_device*,struct radeon_ring*) ;

bool evergreen_dma_is_lockup(struct radeon_device *rdev, struct radeon_ring *ring)
{
 u32 reset_mask = evergreen_gpu_check_soft_reset(rdev);

 if (!(reset_mask & RADEON_RESET_DMA)) {
  radeon_ring_lockup_update(ring);
  return 0;
 }

 radeon_ring_force_activity(rdev, ring);
 return radeon_ring_test_lockup(rdev, ring);
}
