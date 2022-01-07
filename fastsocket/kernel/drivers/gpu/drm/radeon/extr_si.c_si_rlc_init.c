
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * clear_state_obj; int clear_state_gpu_addr; int * save_restore_obj; int save_restore_gpu_addr; } ;
struct radeon_device {int dev; TYPE_1__ rlc; } ;


 int PAGE_SIZE ;
 int RADEON_GEM_DOMAIN_VRAM ;
 int RADEON_GPU_PAGE_SIZE ;
 int dev_warn (int ,char*,int) ;
 int radeon_bo_create (struct radeon_device*,int ,int ,int,int ,int *,int **) ;
 int radeon_bo_pin (int *,int ,int *) ;
 int radeon_bo_reserve (int *,int) ;
 int radeon_bo_unreserve (int *) ;
 int si_rlc_fini (struct radeon_device*) ;
 scalar_t__ unlikely (int) ;

int si_rlc_init(struct radeon_device *rdev)
{
 int r;


 if (rdev->rlc.save_restore_obj == ((void*)0)) {
  r = radeon_bo_create(rdev, RADEON_GPU_PAGE_SIZE, PAGE_SIZE, 1,
         RADEON_GEM_DOMAIN_VRAM, ((void*)0),
         &rdev->rlc.save_restore_obj);
  if (r) {
   dev_warn(rdev->dev, "(%d) create RLC sr bo failed\n", r);
   return r;
  }
 }

 r = radeon_bo_reserve(rdev->rlc.save_restore_obj, 0);
 if (unlikely(r != 0)) {
  si_rlc_fini(rdev);
  return r;
 }
 r = radeon_bo_pin(rdev->rlc.save_restore_obj, RADEON_GEM_DOMAIN_VRAM,
     &rdev->rlc.save_restore_gpu_addr);
 radeon_bo_unreserve(rdev->rlc.save_restore_obj);
 if (r) {
  dev_warn(rdev->dev, "(%d) pin RLC sr bo failed\n", r);
  si_rlc_fini(rdev);
  return r;
 }


 if (rdev->rlc.clear_state_obj == ((void*)0)) {
  r = radeon_bo_create(rdev, RADEON_GPU_PAGE_SIZE, PAGE_SIZE, 1,
         RADEON_GEM_DOMAIN_VRAM, ((void*)0),
         &rdev->rlc.clear_state_obj);
  if (r) {
   dev_warn(rdev->dev, "(%d) create RLC c bo failed\n", r);
   si_rlc_fini(rdev);
   return r;
  }
 }
 r = radeon_bo_reserve(rdev->rlc.clear_state_obj, 0);
 if (unlikely(r != 0)) {
  si_rlc_fini(rdev);
  return r;
 }
 r = radeon_bo_pin(rdev->rlc.clear_state_obj, RADEON_GEM_DOMAIN_VRAM,
     &rdev->rlc.clear_state_gpu_addr);
 radeon_bo_unreserve(rdev->rlc.clear_state_obj);
 if (r) {
  dev_warn(rdev->dev, "(%d) pin RLC c bo failed\n", r);
  si_rlc_fini(rdev);
  return r;
 }

 return 0;
}
