
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct radeon_ring {int dummy; } ;
struct TYPE_5__ {int max_hw_contexts; } ;
struct TYPE_4__ {int max_hw_contexts; } ;
struct TYPE_6__ {TYPE_2__ r600; TYPE_1__ rv770; } ;
struct radeon_device {scalar_t__ family; TYPE_3__ config; struct radeon_ring* ring; } ;


 scalar_t__ CHIP_RV770 ;
 int DRM_ERROR (char*,int) ;
 int PACKET3 (int ,int) ;
 int PACKET3_ME_INITIALIZE ;
 int PACKET3_ME_INITIALIZE_DEVICE_ID (int) ;
 size_t RADEON_RING_TYPE_GFX_INDEX ;
 int R_0086D8_CP_ME_CNTL ;
 int WREG32 (int ,int) ;
 int radeon_ring_lock (struct radeon_device*,struct radeon_ring*,int) ;
 int radeon_ring_unlock_commit (struct radeon_device*,struct radeon_ring*) ;
 int radeon_ring_write (struct radeon_ring*,int) ;

int r600_cp_start(struct radeon_device *rdev)
{
 struct radeon_ring *ring = &rdev->ring[RADEON_RING_TYPE_GFX_INDEX];
 int r;
 uint32_t cp_me;

 r = radeon_ring_lock(rdev, ring, 7);
 if (r) {
  DRM_ERROR("radeon: cp failed to lock ring (%d).\n", r);
  return r;
 }
 radeon_ring_write(ring, PACKET3(PACKET3_ME_INITIALIZE, 5));
 radeon_ring_write(ring, 0x1);
 if (rdev->family >= CHIP_RV770) {
  radeon_ring_write(ring, 0x0);
  radeon_ring_write(ring, rdev->config.rv770.max_hw_contexts - 1);
 } else {
  radeon_ring_write(ring, 0x3);
  radeon_ring_write(ring, rdev->config.r600.max_hw_contexts - 1);
 }
 radeon_ring_write(ring, PACKET3_ME_INITIALIZE_DEVICE_ID(1));
 radeon_ring_write(ring, 0);
 radeon_ring_write(ring, 0);
 radeon_ring_unlock_commit(rdev, ring);

 cp_me = 0xff;
 WREG32(R_0086D8_CP_ME_CNTL, cp_me);
 return 0;
}
