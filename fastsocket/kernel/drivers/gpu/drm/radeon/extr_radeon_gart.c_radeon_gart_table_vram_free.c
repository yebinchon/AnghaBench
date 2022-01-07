
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * robj; } ;
struct radeon_device {TYPE_1__ gart; } ;


 int radeon_bo_unref (int **) ;
 int radeon_gart_table_vram_unpin (struct radeon_device*) ;

void radeon_gart_table_vram_free(struct radeon_device *rdev)
{
 if (rdev->gart.robj == ((void*)0)) {
  return;
 }
 radeon_gart_table_vram_unpin(rdev);
 radeon_bo_unref(&rdev->gart.robj);
}
