
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int dummy; } ;


 int RREG32 (int ) ;
 int R_0060A4_D1CRTC_STATUS_FRAME_COUNT ;
 int R_0068A4_D2CRTC_STATUS_FRAME_COUNT ;

u32 rs600_get_vblank_counter(struct radeon_device *rdev, int crtc)
{
 if (crtc == 0)
  return RREG32(R_0060A4_D1CRTC_STATUS_FRAME_COUNT);
 else
  return RREG32(R_0068A4_D2CRTC_STATUS_FRAME_COUNT);
}
