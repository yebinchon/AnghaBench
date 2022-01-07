
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct radeon_fence {int dummy; } ;
struct radeon_device {int dummy; } ;


 int DRM_ERROR (char*) ;
 int EINVAL ;


 unsigned int RADEON_GPU_PAGE_SIZE ;
 unsigned long jiffies ;
 int jiffies_to_msecs (unsigned long) ;
 int radeon_copy_blit (struct radeon_device*,int ,int ,unsigned int,struct radeon_fence**) ;
 int radeon_copy_dma (struct radeon_device*,int ,int ,unsigned int,struct radeon_fence**) ;
 int radeon_fence_unref (struct radeon_fence**) ;
 int radeon_fence_wait (struct radeon_fence*,int) ;

__attribute__((used)) static int radeon_benchmark_do_move(struct radeon_device *rdev, unsigned size,
        uint64_t saddr, uint64_t daddr,
        int flag, int n)
{
 unsigned long start_jiffies;
 unsigned long end_jiffies;
 struct radeon_fence *fence = ((void*)0);
 int i, r;

 start_jiffies = jiffies;
 for (i = 0; i < n; i++) {
  switch (flag) {
  case 128:
   r = radeon_copy_dma(rdev, saddr, daddr,
         size / RADEON_GPU_PAGE_SIZE,
         &fence);
   break;
  case 129:
   r = radeon_copy_blit(rdev, saddr, daddr,
          size / RADEON_GPU_PAGE_SIZE,
          &fence);
   break;
  default:
   DRM_ERROR("Unknown copy method\n");
   r = -EINVAL;
  }
  if (r)
   goto exit_do_move;
  r = radeon_fence_wait(fence, 0);
  if (r)
   goto exit_do_move;
  radeon_fence_unref(&fence);
 }
 end_jiffies = jiffies;
 r = jiffies_to_msecs(end_jiffies - start_jiffies);

exit_do_move:
 if (fence)
  radeon_fence_unref(&fence);
 return r;
}
