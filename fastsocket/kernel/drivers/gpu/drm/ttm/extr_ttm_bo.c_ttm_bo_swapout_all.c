
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ttm_bo_device {TYPE_1__* glob; } ;
struct TYPE_2__ {int shrink; } ;


 scalar_t__ ttm_bo_swapout (int *) ;

void ttm_bo_swapout_all(struct ttm_bo_device *bdev)
{
 while (ttm_bo_swapout(&bdev->glob->shrink) == 0)
  ;
}
