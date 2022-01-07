
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int bdev; } ;
struct radeon_device {int exclusive_lock; int dev; TYPE_1__ mman; int ddev; int * ring; } ;


 int RADEON_NUM_RINGS ;
 int dev_err (int ,char*,int) ;
 int dev_info (int ,char*,...) ;
 int down_write (int *) ;
 int drm_helper_resume_force_mode (int ) ;
 int kfree (int *) ;
 int radeon_asic_reset (struct radeon_device*) ;
 int radeon_fence_driver_force_completion (struct radeon_device*) ;
 int radeon_ib_ring_tests (struct radeon_device*) ;
 int radeon_restore_bios_scratch_regs (struct radeon_device*) ;
 int radeon_resume (struct radeon_device*) ;
 unsigned int radeon_ring_backup (struct radeon_device*,int *,int **) ;
 int radeon_ring_restore (struct radeon_device*,int *,unsigned int,int *) ;
 int radeon_save_bios_scratch_regs (struct radeon_device*) ;
 int radeon_suspend (struct radeon_device*) ;
 int ttm_bo_lock_delayed_workqueue (int *) ;
 int ttm_bo_unlock_delayed_workqueue (int *,int) ;
 int up_write (int *) ;

int radeon_gpu_reset(struct radeon_device *rdev)
{
 unsigned ring_sizes[RADEON_NUM_RINGS];
 uint32_t *ring_data[RADEON_NUM_RINGS];

 bool saved = 0;

 int i, r;
 int resched;

 down_write(&rdev->exclusive_lock);
 radeon_save_bios_scratch_regs(rdev);

 resched = ttm_bo_lock_delayed_workqueue(&rdev->mman.bdev);
 radeon_suspend(rdev);

 for (i = 0; i < RADEON_NUM_RINGS; ++i) {
  ring_sizes[i] = radeon_ring_backup(rdev, &rdev->ring[i],
         &ring_data[i]);
  if (ring_sizes[i]) {
   saved = 1;
   dev_info(rdev->dev, "Saved %d dwords of commands "
     "on ring %d.\n", ring_sizes[i], i);
  }
 }

retry:
 r = radeon_asic_reset(rdev);
 if (!r) {
  dev_info(rdev->dev, "GPU reset succeeded, trying to resume\n");
  radeon_resume(rdev);
 }

 radeon_restore_bios_scratch_regs(rdev);

 if (!r) {
  for (i = 0; i < RADEON_NUM_RINGS; ++i) {
   radeon_ring_restore(rdev, &rdev->ring[i],
         ring_sizes[i], ring_data[i]);
   ring_sizes[i] = 0;
   ring_data[i] = ((void*)0);
  }

  r = radeon_ib_ring_tests(rdev);
  if (r) {
   dev_err(rdev->dev, "ib ring test failed (%d).\n", r);
   if (saved) {
    saved = 0;
    radeon_suspend(rdev);
    goto retry;
   }
  }
 } else {
  radeon_fence_driver_force_completion(rdev);
  for (i = 0; i < RADEON_NUM_RINGS; ++i) {
   kfree(ring_data[i]);
  }
 }

 drm_helper_resume_force_mode(rdev->ddev);

 ttm_bo_unlock_delayed_workqueue(&rdev->mman.bdev, resched);
 if (r) {

  dev_info(rdev->dev, "GPU reset failed\n");
 }

 up_write(&rdev->exclusive_lock);
 return r;
}
