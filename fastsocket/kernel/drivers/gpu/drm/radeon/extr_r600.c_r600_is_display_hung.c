
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct radeon_device {size_t num_crtc; } ;


 int AVIVO_CRTC_EN ;
 scalar_t__ AVIVO_D1CRTC_CONTROL ;
 scalar_t__ AVIVO_D1CRTC_STATUS_HV_COUNT ;
 int RREG32 (scalar_t__) ;
 scalar_t__* crtc_offsets ;
 int udelay (int) ;

__attribute__((used)) static bool r600_is_display_hung(struct radeon_device *rdev)
{
 u32 crtc_hung = 0;
 u32 crtc_status[2];
 u32 i, j, tmp;

 for (i = 0; i < rdev->num_crtc; i++) {
  if (RREG32(AVIVO_D1CRTC_CONTROL + crtc_offsets[i]) & AVIVO_CRTC_EN) {
   crtc_status[i] = RREG32(AVIVO_D1CRTC_STATUS_HV_COUNT + crtc_offsets[i]);
   crtc_hung |= (1 << i);
  }
 }

 for (j = 0; j < 10; j++) {
  for (i = 0; i < rdev->num_crtc; i++) {
   if (crtc_hung & (1 << i)) {
    tmp = RREG32(AVIVO_D1CRTC_STATUS_HV_COUNT + crtc_offsets[i]);
    if (tmp != crtc_status[i])
     crtc_hung &= ~(1 << i);
   }
  }
  if (crtc_hung == 0)
   return 0;
  udelay(100);
 }

 return 1;
}
