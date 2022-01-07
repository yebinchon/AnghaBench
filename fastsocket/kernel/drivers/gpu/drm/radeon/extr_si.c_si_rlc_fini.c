
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * clear_state_obj; int * save_restore_obj; } ;
struct radeon_device {TYPE_1__ rlc; int dev; } ;


 int dev_warn (int ,char*,int) ;
 int radeon_bo_reserve (int *,int) ;
 int radeon_bo_unpin (int *) ;
 int radeon_bo_unref (int **) ;
 int radeon_bo_unreserve (int *) ;
 scalar_t__ unlikely (int) ;

void si_rlc_fini(struct radeon_device *rdev)
{
 int r;


 if (rdev->rlc.save_restore_obj) {
  r = radeon_bo_reserve(rdev->rlc.save_restore_obj, 0);
  if (unlikely(r != 0))
   dev_warn(rdev->dev, "(%d) reserve RLC sr bo failed\n", r);
  radeon_bo_unpin(rdev->rlc.save_restore_obj);
  radeon_bo_unreserve(rdev->rlc.save_restore_obj);

  radeon_bo_unref(&rdev->rlc.save_restore_obj);
  rdev->rlc.save_restore_obj = ((void*)0);
 }


 if (rdev->rlc.clear_state_obj) {
  r = radeon_bo_reserve(rdev->rlc.clear_state_obj, 0);
  if (unlikely(r != 0))
   dev_warn(rdev->dev, "(%d) reserve RLC c bo failed\n", r);
  radeon_bo_unpin(rdev->rlc.clear_state_obj);
  radeon_bo_unreserve(rdev->rlc.clear_state_obj);

  radeon_bo_unref(&rdev->rlc.clear_state_obj);
  rdev->rlc.clear_state_obj = ((void*)0);
 }
}
