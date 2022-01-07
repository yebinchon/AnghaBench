
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_semaphore {scalar_t__ waiters; int sa_bo; } ;
struct radeon_fence {int dummy; } ;
struct radeon_device {int dev; } ;


 int dev_err (int ,char*,struct radeon_semaphore*) ;
 int kfree (struct radeon_semaphore*) ;
 int radeon_sa_bo_free (struct radeon_device*,int *,struct radeon_fence*) ;

void radeon_semaphore_free(struct radeon_device *rdev,
      struct radeon_semaphore **semaphore,
      struct radeon_fence *fence)
{
 if (semaphore == ((void*)0) || *semaphore == ((void*)0)) {
  return;
 }
 if ((*semaphore)->waiters > 0) {
  dev_err(rdev->dev, "semaphore %p has more waiters than signalers,"
   " hardware lockup imminent!\n", *semaphore);
 }
 radeon_sa_bo_free(rdev, &(*semaphore)->sa_bo, fence);
 kfree(*semaphore);
 *semaphore = ((void*)0);
}
