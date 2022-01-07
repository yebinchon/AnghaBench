
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct radeon_device {TYPE_1__* fence_drv; } ;
struct TYPE_2__ {int last_seq; } ;


 scalar_t__ atomic64_read (int *) ;
 int radeon_fence_process (struct radeon_device*,unsigned int) ;

__attribute__((used)) static bool radeon_fence_seq_signaled(struct radeon_device *rdev,
          u64 seq, unsigned ring)
{
 if (atomic64_read(&rdev->fence_drv[ring].last_seq) >= seq) {
  return 1;
 }

 radeon_fence_process(rdev, ring);
 if (atomic64_read(&rdev->fence_drv[ring].last_seq) >= seq) {
  return 1;
 }
 return 0;
}
