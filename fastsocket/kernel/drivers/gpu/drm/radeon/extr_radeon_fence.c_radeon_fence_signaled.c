
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_fence {scalar_t__ seq; int ring; int rdev; } ;


 scalar_t__ RADEON_FENCE_SIGNALED_SEQ ;
 scalar_t__ radeon_fence_seq_signaled (int ,scalar_t__,int ) ;

bool radeon_fence_signaled(struct radeon_fence *fence)
{
 if (!fence) {
  return 1;
 }
 if (fence->seq == RADEON_FENCE_SIGNALED_SEQ) {
  return 1;
 }
 if (radeon_fence_seq_signaled(fence->rdev, fence->seq, fence->ring)) {
  fence->seq = RADEON_FENCE_SIGNALED_SEQ;
  return 1;
 }
 return 0;
}
