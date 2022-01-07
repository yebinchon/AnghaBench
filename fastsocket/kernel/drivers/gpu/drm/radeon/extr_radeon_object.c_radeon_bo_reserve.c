
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct radeon_bo {TYPE_1__* rdev; int tbo; } ;
struct TYPE_2__ {int dev; } ;


 int ERESTARTSYS ;
 int dev_err (int ,char*,struct radeon_bo*) ;
 int ttm_bo_reserve (int *,int,int,int,int ) ;
 scalar_t__ unlikely (int) ;

int radeon_bo_reserve(struct radeon_bo *bo, bool no_intr)
{
 int r;

 r = ttm_bo_reserve(&bo->tbo, !no_intr, 0, 0, 0);
 if (unlikely(r != 0)) {
  if (r != -ERESTARTSYS)
   dev_err(bo->rdev->dev, "%p reserve failed\n", bo);
  return r;
 }
 return 0;
}
