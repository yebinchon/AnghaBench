
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct radeon_device {int dev; TYPE_1__* fence_drv; } ;
struct TYPE_2__ {int * sync_seq; } ;


 int EDEADLK ;
 int dev_err (int ,char*,int,int) ;
 int radeon_fence_wait_seq (struct radeon_device*,int ,int,int,int) ;

int radeon_fence_wait_empty_locked(struct radeon_device *rdev, int ring)
{
 uint64_t seq = rdev->fence_drv[ring].sync_seq[ring];
 int r;

 r = radeon_fence_wait_seq(rdev, seq, ring, 0, 0);
 if (r) {
  if (r == -EDEADLK) {
   return -EDEADLK;
  }
  dev_err(rdev->dev, "error waiting for ring[%d] to become idle (%d)\n",
   ring, r);
 }
 return 0;
}
