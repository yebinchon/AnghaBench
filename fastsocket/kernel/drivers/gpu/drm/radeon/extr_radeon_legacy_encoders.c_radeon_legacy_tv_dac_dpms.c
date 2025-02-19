
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct radeon_encoder {int active_device; } ;
struct radeon_device {scalar_t__ family; int flags; scalar_t__ is_atom_bios; } ;
struct drm_encoder {struct drm_device* dev; } ;
struct drm_device {struct radeon_device* dev_private; } ;


 int ATOM_DEVICE_TV_SUPPORT ;
 scalar_t__ CHIP_R200 ;
 scalar_t__ CHIP_R420 ;
 scalar_t__ CHIP_R423 ;
 scalar_t__ CHIP_RV410 ;
 int DRM_DEBUG_KMS (char*) ;




 int R420_TV_DAC_BDACPD ;
 int R420_TV_DAC_GDACPD ;
 int R420_TV_DAC_RDACPD ;
 int RADEON_CRTC2_CRT2_ON ;
 int RADEON_CRTC2_GEN_CNTL ;
 int RADEON_FP2_DVO_EN ;
 int RADEON_FP2_GEN_CNTL ;
 int RADEON_FP2_ON ;
 int RADEON_SINGLE_CRTC ;
 int RADEON_TV_DAC_BDACPD ;
 int RADEON_TV_DAC_BGSLEEP ;
 int RADEON_TV_DAC_CNTL ;
 int RADEON_TV_DAC_GDACPD ;
 int RADEON_TV_DAC_RDACPD ;
 int RADEON_TV_MASTER_CNTL ;
 int RADEON_TV_ON ;
 int RREG32 (int ) ;
 int WREG32 (int ,int) ;
 int radeon_atombios_encoder_dpms_scratch_regs (struct drm_encoder*,int) ;
 int radeon_combios_encoder_dpms_scratch_regs (struct drm_encoder*,int) ;
 struct radeon_encoder* to_radeon_encoder (struct drm_encoder*) ;

__attribute__((used)) static void radeon_legacy_tv_dac_dpms(struct drm_encoder *encoder, int mode)
{
 struct drm_device *dev = encoder->dev;
 struct radeon_device *rdev = dev->dev_private;
 struct radeon_encoder *radeon_encoder = to_radeon_encoder(encoder);
 uint32_t fp2_gen_cntl = 0, crtc2_gen_cntl = 0, tv_dac_cntl = 0;
 uint32_t tv_master_cntl = 0;
 bool is_tv;
 DRM_DEBUG_KMS("\n");

 is_tv = radeon_encoder->active_device & ATOM_DEVICE_TV_SUPPORT ? 1 : 0;

 if (rdev->family == CHIP_R200)
  fp2_gen_cntl = RREG32(RADEON_FP2_GEN_CNTL);
 else {
  if (is_tv)
   tv_master_cntl = RREG32(RADEON_TV_MASTER_CNTL);
  else
   crtc2_gen_cntl = RREG32(RADEON_CRTC2_GEN_CNTL);
  tv_dac_cntl = RREG32(RADEON_TV_DAC_CNTL);
 }

 switch (mode) {
 case 130:
  if (rdev->family == CHIP_R200) {
   fp2_gen_cntl |= (RADEON_FP2_ON | RADEON_FP2_DVO_EN);
  } else {
   if (is_tv)
    tv_master_cntl |= RADEON_TV_ON;
   else
    crtc2_gen_cntl |= RADEON_CRTC2_CRT2_ON;

   if (rdev->family == CHIP_R420 ||
       rdev->family == CHIP_R423 ||
       rdev->family == CHIP_RV410)
    tv_dac_cntl &= ~(R420_TV_DAC_RDACPD |
       R420_TV_DAC_GDACPD |
       R420_TV_DAC_BDACPD |
       RADEON_TV_DAC_BGSLEEP);
   else
    tv_dac_cntl &= ~(RADEON_TV_DAC_RDACPD |
       RADEON_TV_DAC_GDACPD |
       RADEON_TV_DAC_BDACPD |
       RADEON_TV_DAC_BGSLEEP);
  }
  break;
 case 129:
 case 128:
 case 131:
  if (rdev->family == CHIP_R200)
   fp2_gen_cntl &= ~(RADEON_FP2_ON | RADEON_FP2_DVO_EN);
  else {
   if (is_tv)
    tv_master_cntl &= ~RADEON_TV_ON;
   else
    crtc2_gen_cntl &= ~RADEON_CRTC2_CRT2_ON;

   if (rdev->family == CHIP_R420 ||
       rdev->family == CHIP_R423 ||
       rdev->family == CHIP_RV410)
    tv_dac_cntl |= (R420_TV_DAC_RDACPD |
      R420_TV_DAC_GDACPD |
      R420_TV_DAC_BDACPD |
      RADEON_TV_DAC_BGSLEEP);
   else
    tv_dac_cntl |= (RADEON_TV_DAC_RDACPD |
      RADEON_TV_DAC_GDACPD |
      RADEON_TV_DAC_BDACPD |
      RADEON_TV_DAC_BGSLEEP);
  }
  break;
 }

 if (rdev->family == CHIP_R200) {
  WREG32(RADEON_FP2_GEN_CNTL, fp2_gen_cntl);
 } else {
  if (is_tv)
   WREG32(RADEON_TV_MASTER_CNTL, tv_master_cntl);

  else if (!(rdev->flags & RADEON_SINGLE_CRTC))
   WREG32(RADEON_CRTC2_GEN_CNTL, crtc2_gen_cntl);
  WREG32(RADEON_TV_DAC_CNTL, tv_dac_cntl);
 }

 if (rdev->is_atom_bios)
  radeon_atombios_encoder_dpms_scratch_regs(encoder, (mode == 130) ? 1 : 0);
 else
  radeon_combios_encoder_dpms_scratch_regs(encoder, (mode == 130) ? 1 : 0);

}
