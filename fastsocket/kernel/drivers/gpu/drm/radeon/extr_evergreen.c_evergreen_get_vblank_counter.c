
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int num_crtc; } ;


 scalar_t__ CRTC_STATUS_FRAME_COUNT ;
 int RREG32 (scalar_t__) ;
 scalar_t__* crtc_offsets ;

u32 evergreen_get_vblank_counter(struct radeon_device *rdev, int crtc)
{
 if (crtc >= rdev->num_crtc)
  return 0;
 else
  return RREG32(CRTC_STATUS_FRAME_COUNT + crtc_offsets[crtc]);
}
