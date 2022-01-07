
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ttm_buffer_object {int dummy; } ;
struct TYPE_2__ {int mclk_lock; } ;
struct radeon_device {TYPE_1__ pm; } ;
struct radeon_bo {struct ttm_buffer_object tbo; struct radeon_device* rdev; } ;


 int down_read (int *) ;
 int ttm_bo_unref (struct ttm_buffer_object**) ;
 int up_read (int *) ;

void radeon_bo_unref(struct radeon_bo **bo)
{
 struct ttm_buffer_object *tbo;
 struct radeon_device *rdev;

 if ((*bo) == ((void*)0))
  return;
 rdev = (*bo)->rdev;
 tbo = &((*bo)->tbo);
 down_read(&rdev->pm.mclk_lock);
 ttm_bo_unref(&tbo);
 up_read(&rdev->pm.mclk_lock);
 if (tbo == ((void*)0))
  *bo = ((void*)0);
}
