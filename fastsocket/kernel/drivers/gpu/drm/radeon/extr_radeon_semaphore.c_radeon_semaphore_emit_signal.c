
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_semaphore {int waiters; } ;
struct radeon_device {int * ring; } ;


 int radeon_semaphore_ring_emit (struct radeon_device*,int,int *,struct radeon_semaphore*,int) ;

void radeon_semaphore_emit_signal(struct radeon_device *rdev, int ring,
             struct radeon_semaphore *semaphore)
{
 --semaphore->waiters;
 radeon_semaphore_ring_emit(rdev, ring, &rdev->ring[ring], semaphore, 0);
}
