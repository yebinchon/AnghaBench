
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct radeon_fence {scalar_t__ seq; } ;
struct radeon_device {int dummy; } ;


 scalar_t__ RADEON_FENCE_SIGNALED_SEQ ;
 int RADEON_NUM_RINGS ;
 int radeon_fence_wait_any_seq (struct radeon_device*,scalar_t__*,int) ;

int radeon_fence_wait_any(struct radeon_device *rdev,
     struct radeon_fence **fences,
     bool intr)
{
 uint64_t seq[RADEON_NUM_RINGS];
 unsigned i;
 int r;

 for (i = 0; i < RADEON_NUM_RINGS; ++i) {
  seq[i] = 0;

  if (!fences[i]) {
   continue;
  }

  if (fences[i]->seq == RADEON_FENCE_SIGNALED_SEQ) {

   return 0;
  }

  seq[i] = fences[i]->seq;
 }

 r = radeon_fence_wait_any_seq(rdev, seq, intr);
 if (r) {
  return r;
 }
 return 0;
}
