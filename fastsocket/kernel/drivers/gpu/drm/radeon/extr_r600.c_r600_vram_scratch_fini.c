
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * robj; } ;
struct radeon_device {TYPE_1__ vram_scratch; } ;


 scalar_t__ likely (int) ;
 int radeon_bo_kunmap (int *) ;
 int radeon_bo_reserve (int *,int) ;
 int radeon_bo_unpin (int *) ;
 int radeon_bo_unref (int **) ;
 int radeon_bo_unreserve (int *) ;

void r600_vram_scratch_fini(struct radeon_device *rdev)
{
 int r;

 if (rdev->vram_scratch.robj == ((void*)0)) {
  return;
 }
 r = radeon_bo_reserve(rdev->vram_scratch.robj, 0);
 if (likely(r == 0)) {
  radeon_bo_kunmap(rdev->vram_scratch.robj);
  radeon_bo_unpin(rdev->vram_scratch.robj);
  radeon_bo_unreserve(rdev->vram_scratch.robj);
 }
 radeon_bo_unref(&rdev->vram_scratch.robj);
}
