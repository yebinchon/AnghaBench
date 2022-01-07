
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int vram_start; } ;
struct radeon_device {int flags; TYPE_1__ mc; } ;
struct r100_mc_save {int CRTC2_GEN_CNTL; int CRTC_GEN_CNTL; int CRTC_EXT_CNTL; int GENMO_WT; } ;


 int RADEON_SINGLE_CRTC ;
 int R_000050_CRTC_GEN_CNTL ;
 int R_000054_CRTC_EXT_CNTL ;
 int R_00023C_DISPLAY_BASE_ADDR ;
 int R_00033C_CRTC2_DISPLAY_BASE_ADDR ;
 int R_0003C2_GENMO_WT ;
 int R_0003F8_CRTC2_GEN_CNTL ;
 int WREG32 (int ,int ) ;
 int WREG8 (int ,int ) ;

void r100_mc_resume(struct radeon_device *rdev, struct r100_mc_save *save)
{

 WREG32(R_00023C_DISPLAY_BASE_ADDR, rdev->mc.vram_start);
 if (!(rdev->flags & RADEON_SINGLE_CRTC)) {
  WREG32(R_00033C_CRTC2_DISPLAY_BASE_ADDR, rdev->mc.vram_start);
 }

 WREG8(R_0003C2_GENMO_WT, save->GENMO_WT);
 WREG32(R_000054_CRTC_EXT_CNTL, save->CRTC_EXT_CNTL);
 WREG32(R_000050_CRTC_GEN_CNTL, save->CRTC_GEN_CNTL);
 if (!(rdev->flags & RADEON_SINGLE_CRTC)) {
  WREG32(R_0003F8_CRTC2_GEN_CNTL, save->CRTC2_GEN_CNTL);
 }
}
