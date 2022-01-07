
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_ring {int ready; } ;
struct radeon_device {int accel_working; struct radeon_ring* ring; } ;


 int DRM_ERROR (char*,unsigned int,...) ;
 unsigned int RADEON_NUM_RINGS ;
 unsigned int RADEON_RING_TYPE_GFX_INDEX ;
 int radeon_ib_test (struct radeon_device*,unsigned int,struct radeon_ring*) ;

int radeon_ib_ring_tests(struct radeon_device *rdev)
{
 unsigned i;
 int r;

 for (i = 0; i < RADEON_NUM_RINGS; ++i) {
  struct radeon_ring *ring = &rdev->ring[i];

  if (!ring->ready)
   continue;

  r = radeon_ib_test(rdev, i, ring);
  if (r) {
   ring->ready = 0;

   if (i == RADEON_RING_TYPE_GFX_INDEX) {

    DRM_ERROR("radeon: failed testing IB on GFX ring (%d).\n", r);
                  rdev->accel_working = 0;
    return r;

   } else {

    DRM_ERROR("radeon: failed testing IB on ring %d (%d).\n", i, r);
   }
  }
 }
 return 0;
}
