
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_ring {int dummy; } ;
struct radeon_device {int dummy; } ;


 int G_000E40_GUI_ACTIVE (int ) ;
 int RREG32 (int ) ;
 int R_000E40_RBBM_STATUS ;
 int radeon_ring_force_activity (struct radeon_device*,struct radeon_ring*) ;
 int radeon_ring_lockup_update (struct radeon_ring*) ;
 int radeon_ring_test_lockup (struct radeon_device*,struct radeon_ring*) ;

bool r100_gpu_is_lockup(struct radeon_device *rdev, struct radeon_ring *ring)
{
 u32 rbbm_status;

 rbbm_status = RREG32(R_000E40_RBBM_STATUS);
 if (!G_000E40_GUI_ACTIVE(rbbm_status)) {
  radeon_ring_lockup_update(ring);
  return 0;
 }

 radeon_ring_force_activity(rdev, ring);
 return radeon_ring_test_lockup(rdev, ring);
}
