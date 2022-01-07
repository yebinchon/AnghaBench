
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct radeon_device {int flags; } ;
struct radeon_crtc {int enabled; scalar_t__ crtc_id; } ;
struct drm_device {struct radeon_device* dev_private; } ;
struct drm_crtc {struct drm_device* dev; } ;






 int RADEON_CRTC2_DISP_DIS ;
 int RADEON_CRTC2_DISP_REQ_EN_B ;
 int RADEON_CRTC2_EN ;
 int RADEON_CRTC2_GEN_CNTL ;
 int RADEON_CRTC2_HSYNC_DIS ;
 int RADEON_CRTC2_VSYNC_DIS ;
 int RADEON_CRTC_CRT_ON ;
 int RADEON_CRTC_DISPLAY_DIS ;
 int RADEON_CRTC_DISP_REQ_EN_B ;
 int RADEON_CRTC_EN ;
 int RADEON_CRTC_EXT_CNTL ;
 int RADEON_CRTC_GEN_CNTL ;
 int RADEON_CRTC_HSYNC_DIS ;
 int RADEON_CRTC_VSYNC_DIS ;
 int RADEON_SINGLE_CRTC ;
 int WREG32_P (int ,int,int) ;
 int drm_vblank_post_modeset (struct drm_device*,scalar_t__) ;
 int drm_vblank_pre_modeset (struct drm_device*,scalar_t__) ;
 int radeon_crtc_load_lut (struct drm_crtc*) ;
 int radeon_pm_compute_clocks (struct radeon_device*) ;
 struct radeon_crtc* to_radeon_crtc (struct drm_crtc*) ;

__attribute__((used)) static void radeon_crtc_dpms(struct drm_crtc *crtc, int mode)
{
 struct radeon_crtc *radeon_crtc = to_radeon_crtc(crtc);
 struct drm_device *dev = crtc->dev;
 struct radeon_device *rdev = dev->dev_private;
 uint32_t crtc_ext_cntl = 0;
 uint32_t mask;

 if (radeon_crtc->crtc_id)
  mask = (RADEON_CRTC2_DISP_DIS |
   RADEON_CRTC2_VSYNC_DIS |
   RADEON_CRTC2_HSYNC_DIS |
   RADEON_CRTC2_DISP_REQ_EN_B);
 else
  mask = (RADEON_CRTC_DISPLAY_DIS |
   RADEON_CRTC_VSYNC_DIS |
   RADEON_CRTC_HSYNC_DIS);
 if (rdev->flags & RADEON_SINGLE_CRTC)
  crtc_ext_cntl = RADEON_CRTC_CRT_ON;

 switch (mode) {
 case 130:
  radeon_crtc->enabled = 1;

  radeon_pm_compute_clocks(rdev);
  if (radeon_crtc->crtc_id)
   WREG32_P(RADEON_CRTC2_GEN_CNTL, RADEON_CRTC2_EN, ~(RADEON_CRTC2_EN | mask));
  else {
   WREG32_P(RADEON_CRTC_GEN_CNTL, RADEON_CRTC_EN, ~(RADEON_CRTC_EN |
          RADEON_CRTC_DISP_REQ_EN_B));
   WREG32_P(RADEON_CRTC_EXT_CNTL, crtc_ext_cntl, ~(mask | crtc_ext_cntl));
  }
  drm_vblank_post_modeset(dev, radeon_crtc->crtc_id);
  radeon_crtc_load_lut(crtc);
  break;
 case 129:
 case 128:
 case 131:
  drm_vblank_pre_modeset(dev, radeon_crtc->crtc_id);
  if (radeon_crtc->crtc_id)
   WREG32_P(RADEON_CRTC2_GEN_CNTL, mask, ~(RADEON_CRTC2_EN | mask));
  else {
   WREG32_P(RADEON_CRTC_GEN_CNTL, RADEON_CRTC_DISP_REQ_EN_B, ~(RADEON_CRTC_EN |
              RADEON_CRTC_DISP_REQ_EN_B));
   WREG32_P(RADEON_CRTC_EXT_CNTL, mask, ~(mask | crtc_ext_cntl));
  }
  radeon_crtc->enabled = 0;

  radeon_pm_compute_clocks(rdev);
  break;
 }
}
