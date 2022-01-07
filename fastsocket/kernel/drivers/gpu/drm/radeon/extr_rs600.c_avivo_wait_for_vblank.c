
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int num_crtc; } ;


 int AVIVO_CRTC_EN ;
 scalar_t__ AVIVO_D1CRTC_CONTROL ;
 int RREG32 (scalar_t__) ;
 int avivo_is_counter_moving (struct radeon_device*,int) ;
 scalar_t__ avivo_is_in_vblank (struct radeon_device*,int) ;
 scalar_t__* crtc_offsets ;

void avivo_wait_for_vblank(struct radeon_device *rdev, int crtc)
{
 unsigned i = 0;

 if (crtc >= rdev->num_crtc)
  return;

 if (!(RREG32(AVIVO_D1CRTC_CONTROL + crtc_offsets[crtc]) & AVIVO_CRTC_EN))
  return;




 while (avivo_is_in_vblank(rdev, crtc)) {
  if (i++ % 100 == 0) {
   if (!avivo_is_counter_moving(rdev, crtc))
    break;
  }
 }

 while (!avivo_is_in_vblank(rdev, crtc)) {
  if (i++ % 100 == 0) {
   if (!avivo_is_counter_moving(rdev, crtc))
    break;
  }
 }
}
