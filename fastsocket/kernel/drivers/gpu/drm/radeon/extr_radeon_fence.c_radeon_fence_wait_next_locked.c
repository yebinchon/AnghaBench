
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct radeon_device {TYPE_1__* fence_drv; } ;
struct TYPE_2__ {scalar_t__* sync_seq; int last_seq; } ;


 int ENOENT ;
 scalar_t__ atomic64_read (int *) ;
 int radeon_fence_wait_seq (struct radeon_device*,scalar_t__,int,int,int) ;

int radeon_fence_wait_next_locked(struct radeon_device *rdev, int ring)
{
 uint64_t seq;

 seq = atomic64_read(&rdev->fence_drv[ring].last_seq) + 1ULL;
 if (seq >= rdev->fence_drv[ring].sync_seq[ring]) {


  return -ENOENT;
 }
 return radeon_fence_wait_seq(rdev, seq, ring, 0, 0);
}
