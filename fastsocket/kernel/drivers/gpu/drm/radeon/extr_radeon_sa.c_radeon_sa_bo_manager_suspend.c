
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_sa_manager {int * bo; } ;
struct radeon_device {int dev; } ;


 int EINVAL ;
 int dev_err (int ,char*) ;
 int radeon_bo_kunmap (int *) ;
 int radeon_bo_reserve (int *,int) ;
 int radeon_bo_unpin (int *) ;
 int radeon_bo_unreserve (int *) ;

int radeon_sa_bo_manager_suspend(struct radeon_device *rdev,
     struct radeon_sa_manager *sa_manager)
{
 int r;

 if (sa_manager->bo == ((void*)0)) {
  dev_err(rdev->dev, "no bo for sa manager\n");
  return -EINVAL;
 }

 r = radeon_bo_reserve(sa_manager->bo, 0);
 if (!r) {
  radeon_bo_kunmap(sa_manager->bo);
  radeon_bo_unpin(sa_manager->bo);
  radeon_bo_unreserve(sa_manager->bo);
 }
 return r;
}
