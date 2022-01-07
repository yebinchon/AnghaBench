
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int enabled; scalar_t__ wb_obj; } ;
struct radeon_device {TYPE_1__ wb; } ;


 int radeon_bo_kunmap (scalar_t__) ;
 int radeon_bo_reserve (scalar_t__,int) ;
 int radeon_bo_unpin (scalar_t__) ;
 int radeon_bo_unreserve (scalar_t__) ;
 scalar_t__ unlikely (int) ;

void radeon_wb_disable(struct radeon_device *rdev)
{
 int r;

 if (rdev->wb.wb_obj) {
  r = radeon_bo_reserve(rdev->wb.wb_obj, 0);
  if (unlikely(r != 0))
   return;
  radeon_bo_kunmap(rdev->wb.wb_obj);
  radeon_bo_unpin(rdev->wb.wb_obj);
  radeon_bo_unreserve(rdev->wb.wb_obj);
 }
 rdev->wb.enabled = 0;
}
