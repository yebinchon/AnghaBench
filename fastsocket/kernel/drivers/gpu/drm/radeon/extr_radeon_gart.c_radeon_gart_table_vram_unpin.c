
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * ptr; int * robj; } ;
struct radeon_device {TYPE_1__ gart; } ;


 scalar_t__ likely (int) ;
 int radeon_bo_kunmap (int *) ;
 int radeon_bo_reserve (int *,int) ;
 int radeon_bo_unpin (int *) ;
 int radeon_bo_unreserve (int *) ;

void radeon_gart_table_vram_unpin(struct radeon_device *rdev)
{
 int r;

 if (rdev->gart.robj == ((void*)0)) {
  return;
 }
 r = radeon_bo_reserve(rdev->gart.robj, 0);
 if (likely(r == 0)) {
  radeon_bo_kunmap(rdev->gart.robj);
  radeon_bo_unpin(rdev->gart.robj);
  radeon_bo_unreserve(rdev->gart.robj);
  rdev->gart.ptr = ((void*)0);
 }
}
