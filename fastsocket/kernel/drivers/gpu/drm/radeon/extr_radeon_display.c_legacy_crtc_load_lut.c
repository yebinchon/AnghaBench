
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct radeon_device {int dummy; } ;
struct radeon_crtc {scalar_t__ crtc_id; int* lut_r; int* lut_g; int* lut_b; } ;
struct drm_device {struct radeon_device* dev_private; } ;
struct drm_crtc {struct drm_device* dev; } ;


 int RADEON_DAC2_PALETTE_ACC_CTL ;
 int RADEON_DAC_CNTL2 ;
 int RADEON_PALETTE_30_DATA ;
 int RADEON_PALETTE_INDEX ;
 int RREG32 (int ) ;
 int WREG32 (int ,int) ;
 int WREG8 (int ,int ) ;
 struct radeon_crtc* to_radeon_crtc (struct drm_crtc*) ;

__attribute__((used)) static void legacy_crtc_load_lut(struct drm_crtc *crtc)
{
 struct radeon_crtc *radeon_crtc = to_radeon_crtc(crtc);
 struct drm_device *dev = crtc->dev;
 struct radeon_device *rdev = dev->dev_private;
 int i;
 uint32_t dac2_cntl;

 dac2_cntl = RREG32(RADEON_DAC_CNTL2);
 if (radeon_crtc->crtc_id == 0)
  dac2_cntl &= (uint32_t)~RADEON_DAC2_PALETTE_ACC_CTL;
 else
  dac2_cntl |= RADEON_DAC2_PALETTE_ACC_CTL;
 WREG32(RADEON_DAC_CNTL2, dac2_cntl);

 WREG8(RADEON_PALETTE_INDEX, 0);
 for (i = 0; i < 256; i++) {
  WREG32(RADEON_PALETTE_30_DATA,
        (radeon_crtc->lut_r[i] << 20) |
        (radeon_crtc->lut_g[i] << 10) |
        (radeon_crtc->lut_b[i] << 0));
 }
}
