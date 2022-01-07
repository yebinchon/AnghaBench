
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct radeon_device {TYPE_1__* fence_drv; } ;
struct TYPE_2__ {int * sync_seq; int initialized; } ;


 int RADEON_NUM_RINGS ;
 int radeon_fence_write (struct radeon_device*,int ,int) ;

void radeon_fence_driver_force_completion(struct radeon_device *rdev)
{
 int ring;

 for (ring = 0; ring < RADEON_NUM_RINGS; ring++) {
  if (!rdev->fence_drv[ring].initialized)
   continue;
  radeon_fence_write(rdev, rdev->fence_drv[ring].sync_seq[ring], ring);
 }
}
