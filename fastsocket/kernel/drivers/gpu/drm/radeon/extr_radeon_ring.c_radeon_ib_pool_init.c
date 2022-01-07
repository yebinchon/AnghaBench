
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int ib_pool_ready; int dev; int ring_tmp_bo; } ;


 int RADEON_GEM_DOMAIN_GTT ;
 int RADEON_IB_POOL_SIZE ;
 int dev_err (int ,char*) ;
 scalar_t__ radeon_debugfs_sa_init (struct radeon_device*) ;
 int radeon_sa_bo_manager_init (struct radeon_device*,int *,int,int ) ;
 int radeon_sa_bo_manager_start (struct radeon_device*,int *) ;

int radeon_ib_pool_init(struct radeon_device *rdev)
{
 int r;

 if (rdev->ib_pool_ready) {
  return 0;
 }
 r = radeon_sa_bo_manager_init(rdev, &rdev->ring_tmp_bo,
          RADEON_IB_POOL_SIZE*64*1024,
          RADEON_GEM_DOMAIN_GTT);
 if (r) {
  return r;
 }

 r = radeon_sa_bo_manager_start(rdev, &rdev->ring_tmp_bo);
 if (r) {
  return r;
 }

 rdev->ib_pool_ready = 1;
 if (radeon_debugfs_sa_init(rdev)) {
  dev_err(rdev->dev, "failed to register debugfs file for SA\n");
 }
 return 0;
}
