
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct radeon_device {int dummy; } ;
struct radeon_crtc {int crtc_offset; int crtc_id; } ;
struct drm_crtc {TYPE_1__* dev; } ;
struct TYPE_2__ {struct radeon_device* dev_private; } ;


 scalar_t__ ASIC_IS_AVIVO (struct radeon_device*) ;
 scalar_t__ ASIC_IS_DCE4 (struct radeon_device*) ;
 int AVIVO_D1CURSOR_EN ;
 int AVIVO_D1CURSOR_MODE_24BPP ;
 int AVIVO_D1CURSOR_MODE_SHIFT ;
 int AVIVO_D1CUR_CONTROL ;
 int EVERGREEN_CURSOR_24_8_PRE_MULT ;
 int EVERGREEN_CURSOR_EN ;
 int EVERGREEN_CURSOR_MODE (int ) ;
 int EVERGREEN_CURSOR_URGENT_1_2 ;
 int EVERGREEN_CURSOR_URGENT_CONTROL (int ) ;
 int EVERGREEN_CUR_CONTROL ;
 int RADEON_CRTC2_GEN_CNTL ;
 int RADEON_CRTC_CUR_EN ;
 int RADEON_CRTC_CUR_MODE_24BPP ;
 int RADEON_CRTC_CUR_MODE_MASK ;
 int RADEON_CRTC_CUR_MODE_SHIFT ;
 int RADEON_CRTC_GEN_CNTL ;
 int RADEON_MM_DATA ;
 int RADEON_MM_INDEX ;
 int WREG32 (int ,int) ;
 int WREG32_P (int ,int,int) ;
 struct radeon_crtc* to_radeon_crtc (struct drm_crtc*) ;

__attribute__((used)) static void radeon_show_cursor(struct drm_crtc *crtc)
{
 struct radeon_crtc *radeon_crtc = to_radeon_crtc(crtc);
 struct radeon_device *rdev = crtc->dev->dev_private;

 if (ASIC_IS_DCE4(rdev)) {
  WREG32(RADEON_MM_INDEX, EVERGREEN_CUR_CONTROL + radeon_crtc->crtc_offset);
  WREG32(RADEON_MM_DATA, EVERGREEN_CURSOR_EN |
         EVERGREEN_CURSOR_MODE(EVERGREEN_CURSOR_24_8_PRE_MULT) |
         EVERGREEN_CURSOR_URGENT_CONTROL(EVERGREEN_CURSOR_URGENT_1_2));
 } else if (ASIC_IS_AVIVO(rdev)) {
  WREG32(RADEON_MM_INDEX, AVIVO_D1CUR_CONTROL + radeon_crtc->crtc_offset);
  WREG32(RADEON_MM_DATA, AVIVO_D1CURSOR_EN |
         (AVIVO_D1CURSOR_MODE_24BPP << AVIVO_D1CURSOR_MODE_SHIFT));
 } else {
  switch (radeon_crtc->crtc_id) {
  case 0:
   WREG32(RADEON_MM_INDEX, RADEON_CRTC_GEN_CNTL);
   break;
  case 1:
   WREG32(RADEON_MM_INDEX, RADEON_CRTC2_GEN_CNTL);
   break;
  default:
   return;
  }

  WREG32_P(RADEON_MM_DATA, (RADEON_CRTC_CUR_EN |
       (RADEON_CRTC_CUR_MODE_24BPP << RADEON_CRTC_CUR_MODE_SHIFT)),
    ~(RADEON_CRTC_CUR_EN | RADEON_CRTC_CUR_MODE_MASK));
 }
}
