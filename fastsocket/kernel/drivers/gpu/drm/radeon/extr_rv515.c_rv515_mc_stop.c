
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rv515_mc_save {int vga_render_control; int vga_hdp_control; int* crtc_enabled; } ;
struct radeon_device {int num_crtc; int usec_timeout; scalar_t__ family; } ;


 int AVIVO_CRTC_DISP_READ_REQUEST_DISABLE ;
 int AVIVO_CRTC_EN ;
 scalar_t__ AVIVO_D1CRTC_CONTROL ;
 scalar_t__ AVIVO_D1CRTC_UPDATE_LOCK ;
 scalar_t__ AVIVO_D1GRPH_UPDATE ;
 int AVIVO_D1GRPH_UPDATE_LOCK ;
 scalar_t__ AVIVO_D1MODE_MASTER_UPDATE_LOCK ;
 scalar_t__ CHIP_R600 ;
 scalar_t__ CHIP_RV770 ;
 scalar_t__ R600_BIF_FB_EN ;
 int R600_BLACKOUT_MASK ;
 scalar_t__ R600_CITF_CNTL ;
 scalar_t__ R700_MC_CITF_CNTL ;
 int RREG32 (scalar_t__) ;
 scalar_t__ R_000300_VGA_RENDER_CONTROL ;
 scalar_t__ R_000328_VGA_HDP_CONTROL ;
 int WREG32 (scalar_t__,int) ;
 scalar_t__* crtc_offsets ;
 int radeon_get_vblank_counter (struct radeon_device*,int) ;
 int radeon_mc_wait_for_idle (struct radeon_device*) ;
 int radeon_wait_for_vblank (struct radeon_device*,int) ;
 int udelay (int) ;

void rv515_mc_stop(struct radeon_device *rdev, struct rv515_mc_save *save)
{
 u32 crtc_enabled, tmp, frame_count, blackout;
 int i, j;

 save->vga_render_control = RREG32(R_000300_VGA_RENDER_CONTROL);
 save->vga_hdp_control = RREG32(R_000328_VGA_HDP_CONTROL);


 WREG32(R_000300_VGA_RENDER_CONTROL, 0);

 for (i = 0; i < rdev->num_crtc; i++) {
  crtc_enabled = RREG32(AVIVO_D1CRTC_CONTROL + crtc_offsets[i]) & AVIVO_CRTC_EN;
  if (crtc_enabled) {
   save->crtc_enabled[i] = 1;
   tmp = RREG32(AVIVO_D1CRTC_CONTROL + crtc_offsets[i]);
   if (!(tmp & AVIVO_CRTC_DISP_READ_REQUEST_DISABLE)) {
    radeon_wait_for_vblank(rdev, i);
    WREG32(AVIVO_D1CRTC_UPDATE_LOCK + crtc_offsets[i], 1);
    tmp |= AVIVO_CRTC_DISP_READ_REQUEST_DISABLE;
    WREG32(AVIVO_D1CRTC_CONTROL + crtc_offsets[i], tmp);
    WREG32(AVIVO_D1CRTC_UPDATE_LOCK + crtc_offsets[i], 0);
   }

   frame_count = radeon_get_vblank_counter(rdev, i);
   for (j = 0; j < rdev->usec_timeout; j++) {
    if (radeon_get_vblank_counter(rdev, i) != frame_count)
     break;
    udelay(1);
   }


   WREG32(AVIVO_D1CRTC_UPDATE_LOCK + crtc_offsets[i], 1);
   tmp = RREG32(AVIVO_D1CRTC_CONTROL + crtc_offsets[i]);
   tmp &= ~AVIVO_CRTC_EN;
   WREG32(AVIVO_D1CRTC_CONTROL + crtc_offsets[i], tmp);
   WREG32(AVIVO_D1CRTC_UPDATE_LOCK + crtc_offsets[i], 0);
   save->crtc_enabled[i] = 0;

  } else {
   save->crtc_enabled[i] = 0;
  }
 }

 radeon_mc_wait_for_idle(rdev);

 if (rdev->family >= CHIP_R600) {
  if (rdev->family >= CHIP_RV770)
   blackout = RREG32(R700_MC_CITF_CNTL);
  else
   blackout = RREG32(R600_CITF_CNTL);
  if ((blackout & R600_BLACKOUT_MASK) != R600_BLACKOUT_MASK) {

   WREG32(R600_BIF_FB_EN, 0);

   blackout |= R600_BLACKOUT_MASK;
   if (rdev->family >= CHIP_RV770)
    WREG32(R700_MC_CITF_CNTL, blackout);
   else
    WREG32(R600_CITF_CNTL, blackout);
  }
 }

 udelay(100);


 for (i = 0; i < rdev->num_crtc; i++) {
  if (save->crtc_enabled[i]) {
   tmp = RREG32(AVIVO_D1GRPH_UPDATE + crtc_offsets[i]);
   if (!(tmp & AVIVO_D1GRPH_UPDATE_LOCK)) {
    tmp |= AVIVO_D1GRPH_UPDATE_LOCK;
    WREG32(AVIVO_D1GRPH_UPDATE + crtc_offsets[i], tmp);
   }
   tmp = RREG32(AVIVO_D1MODE_MASTER_UPDATE_LOCK + crtc_offsets[i]);
   if (!(tmp & 1)) {
    tmp |= 1;
    WREG32(AVIVO_D1MODE_MASTER_UPDATE_LOCK + crtc_offsets[i], tmp);
   }
  }
 }
}
