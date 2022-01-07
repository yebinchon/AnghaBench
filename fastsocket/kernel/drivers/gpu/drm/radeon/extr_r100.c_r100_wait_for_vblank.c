
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int num_crtc; } ;


 int RADEON_CRTC2_EN ;
 int RADEON_CRTC2_GEN_CNTL ;
 int RADEON_CRTC_EN ;
 int RADEON_CRTC_GEN_CNTL ;
 int RREG32 (int ) ;
 int r100_is_counter_moving (struct radeon_device*,int) ;
 scalar_t__ r100_is_in_vblank (struct radeon_device*,int) ;

void r100_wait_for_vblank(struct radeon_device *rdev, int crtc)
{
 unsigned i = 0;

 if (crtc >= rdev->num_crtc)
  return;

 if (crtc == 0) {
  if (!(RREG32(RADEON_CRTC_GEN_CNTL) & RADEON_CRTC_EN))
   return;
 } else {
  if (!(RREG32(RADEON_CRTC2_GEN_CNTL) & RADEON_CRTC2_EN))
   return;
 }




 while (r100_is_in_vblank(rdev, crtc)) {
  if (i++ % 100 == 0) {
   if (!r100_is_counter_moving(rdev, crtc))
    break;
  }
 }

 while (!r100_is_in_vblank(rdev, crtc)) {
  if (i++ % 100 == 0) {
   if (!r100_is_counter_moving(rdev, crtc))
    break;
  }
 }
}
