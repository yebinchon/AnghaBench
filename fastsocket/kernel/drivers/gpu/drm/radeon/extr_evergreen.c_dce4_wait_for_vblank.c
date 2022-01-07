
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int num_crtc; } ;


 scalar_t__ EVERGREEN_CRTC_CONTROL ;
 int EVERGREEN_CRTC_MASTER_EN ;
 int RREG32 (scalar_t__) ;
 scalar_t__* crtc_offsets ;
 int dce4_is_counter_moving (struct radeon_device*,int) ;
 scalar_t__ dce4_is_in_vblank (struct radeon_device*,int) ;

void dce4_wait_for_vblank(struct radeon_device *rdev, int crtc)
{
 unsigned i = 0;

 if (crtc >= rdev->num_crtc)
  return;

 if (!(RREG32(EVERGREEN_CRTC_CONTROL + crtc_offsets[crtc]) & EVERGREEN_CRTC_MASTER_EN))
  return;




 while (dce4_is_in_vblank(rdev, crtc)) {
  if (i++ % 100 == 0) {
   if (!dce4_is_counter_moving(rdev, crtc))
    break;
  }
 }

 while (!dce4_is_in_vblank(rdev, crtc)) {
  if (i++ % 100 == 0) {
   if (!dce4_is_counter_moving(rdev, crtc))
    break;
  }
 }
}
