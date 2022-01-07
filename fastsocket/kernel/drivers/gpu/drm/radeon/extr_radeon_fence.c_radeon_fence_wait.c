
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_fence {int seq; int ring; int rdev; } ;


 int EINVAL ;
 int RADEON_FENCE_SIGNALED_SEQ ;
 int WARN (int,char*,struct radeon_fence*) ;
 int radeon_fence_wait_seq (int ,int ,int ,int,int) ;

int radeon_fence_wait(struct radeon_fence *fence, bool intr)
{
 int r;

 if (fence == ((void*)0)) {
  WARN(1, "Querying an invalid fence : %p !\n", fence);
  return -EINVAL;
 }

 r = radeon_fence_wait_seq(fence->rdev, fence->seq,
      fence->ring, intr, 1);
 if (r) {
  return r;
 }
 fence->seq = RADEON_FENCE_SIGNALED_SEQ;
 return 0;
}
