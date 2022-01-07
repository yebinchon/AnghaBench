
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_bo {int kmap; int * kptr; } ;


 int radeon_bo_check_tiling (struct radeon_bo*,int ,int ) ;
 int ttm_bo_kunmap (int *) ;

void radeon_bo_kunmap(struct radeon_bo *bo)
{
 if (bo->kptr == ((void*)0))
  return;
 bo->kptr = ((void*)0);
 radeon_bo_check_tiling(bo, 0, 0);
 ttm_bo_kunmap(&bo->kmap);
}
