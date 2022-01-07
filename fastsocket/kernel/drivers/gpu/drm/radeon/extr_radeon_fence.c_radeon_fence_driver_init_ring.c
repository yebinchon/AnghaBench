
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct radeon_device {TYPE_1__* fence_drv; } ;
struct TYPE_2__ {int scratch_reg; int initialized; int last_activity; int last_seq; scalar_t__* sync_seq; scalar_t__ gpu_addr; int * cpu_addr; } ;


 int RADEON_NUM_RINGS ;
 int atomic64_set (int *,int ) ;
 int jiffies ;

__attribute__((used)) static void radeon_fence_driver_init_ring(struct radeon_device *rdev, int ring)
{
 int i;

 rdev->fence_drv[ring].scratch_reg = -1;
 rdev->fence_drv[ring].cpu_addr = ((void*)0);
 rdev->fence_drv[ring].gpu_addr = 0;
 for (i = 0; i < RADEON_NUM_RINGS; ++i)
  rdev->fence_drv[ring].sync_seq[i] = 0;
 atomic64_set(&rdev->fence_drv[ring].last_seq, 0);
 rdev->fence_drv[ring].last_activity = jiffies;
 rdev->fence_drv[ring].initialized = 0;
}
