
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct radeon_device {int dummy; } ;


 unsigned int RADEON_NUM_RINGS ;
 scalar_t__ radeon_fence_seq_signaled (struct radeon_device*,scalar_t__,unsigned int) ;

__attribute__((used)) static bool radeon_fence_any_seq_signaled(struct radeon_device *rdev, u64 *seq)
{
 unsigned i;

 for (i = 0; i < RADEON_NUM_RINGS; ++i) {
  if (seq[i] && radeon_fence_seq_signaled(rdev, seq[i], i)) {
   return 1;
  }
 }
 return 0;
}
