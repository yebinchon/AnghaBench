
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dev; int fence_queue; } ;


 int RADEON_NUM_RINGS ;
 int dev_err (int ,char*) ;
 int init_waitqueue_head (int *) ;
 scalar_t__ radeon_debugfs_fence_init (struct radeon_device*) ;
 int radeon_fence_driver_init_ring (struct radeon_device*,int) ;

int radeon_fence_driver_init(struct radeon_device *rdev)
{
 int ring;

 init_waitqueue_head(&rdev->fence_queue);
 for (ring = 0; ring < RADEON_NUM_RINGS; ring++) {
  radeon_fence_driver_init_ring(rdev, ring);
 }
 if (radeon_debugfs_fence_init(rdev)) {
  dev_err(rdev->dev, "fence debugfs file creation failed\n");
 }
 return 0;
}
