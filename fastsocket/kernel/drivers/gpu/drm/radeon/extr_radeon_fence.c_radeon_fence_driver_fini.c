
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct radeon_device {int ring_lock; TYPE_1__* fence_drv; int fence_queue; } ;
struct TYPE_2__ {int initialized; int scratch_reg; } ;


 int RADEON_NUM_RINGS ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int radeon_fence_driver_force_completion (struct radeon_device*) ;
 int radeon_fence_wait_empty_locked (struct radeon_device*,int) ;
 int radeon_scratch_free (struct radeon_device*,int ) ;
 int wake_up_all (int *) ;

void radeon_fence_driver_fini(struct radeon_device *rdev)
{
 int ring, r;

 mutex_lock(&rdev->ring_lock);
 for (ring = 0; ring < RADEON_NUM_RINGS; ring++) {
  if (!rdev->fence_drv[ring].initialized)
   continue;
  r = radeon_fence_wait_empty_locked(rdev, ring);
  if (r) {

   radeon_fence_driver_force_completion(rdev);
  }
  wake_up_all(&rdev->fence_queue);
  radeon_scratch_free(rdev, rdev->fence_drv[ring].scratch_reg);
  rdev->fence_drv[ring].initialized = 0;
 }
 mutex_unlock(&rdev->ring_lock);
}
