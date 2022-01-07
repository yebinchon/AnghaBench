
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct radeon_device {int flags; scalar_t__ is_atom_bios; } ;
struct drm_encoder {struct drm_device* dev; } ;
struct drm_device {struct radeon_device* dev_private; } ;


 int DRM_DEBUG_KMS (char*) ;




 int RADEON_CRTC_CRT_ON ;
 int RADEON_CRTC_EXT_CNTL ;
 int RADEON_DAC_CNTL ;
 int RADEON_DAC_MACRO_CNTL ;
 int RADEON_DAC_PDWN ;
 int RADEON_DAC_PDWN_B ;
 int RADEON_DAC_PDWN_G ;
 int RADEON_DAC_PDWN_R ;
 int RADEON_SINGLE_CRTC ;
 int RREG32 (int ) ;
 int WREG32 (int ,int) ;
 int radeon_atombios_encoder_dpms_scratch_regs (struct drm_encoder*,int) ;
 int radeon_combios_encoder_dpms_scratch_regs (struct drm_encoder*,int) ;

__attribute__((used)) static void radeon_legacy_primary_dac_dpms(struct drm_encoder *encoder, int mode)
{
 struct drm_device *dev = encoder->dev;
 struct radeon_device *rdev = dev->dev_private;
 uint32_t crtc_ext_cntl = RREG32(RADEON_CRTC_EXT_CNTL);
 uint32_t dac_cntl = RREG32(RADEON_DAC_CNTL);
 uint32_t dac_macro_cntl = RREG32(RADEON_DAC_MACRO_CNTL);

 DRM_DEBUG_KMS("\n");

 switch (mode) {
 case 130:
  crtc_ext_cntl |= RADEON_CRTC_CRT_ON;
  dac_cntl &= ~RADEON_DAC_PDWN;
  dac_macro_cntl &= ~(RADEON_DAC_PDWN_R |
        RADEON_DAC_PDWN_G |
        RADEON_DAC_PDWN_B);
  break;
 case 129:
 case 128:
 case 131:
  crtc_ext_cntl &= ~RADEON_CRTC_CRT_ON;
  dac_cntl |= RADEON_DAC_PDWN;
  dac_macro_cntl |= (RADEON_DAC_PDWN_R |
       RADEON_DAC_PDWN_G |
       RADEON_DAC_PDWN_B);
  break;
 }


 if (!(rdev->flags & RADEON_SINGLE_CRTC))
  WREG32(RADEON_CRTC_EXT_CNTL, crtc_ext_cntl);
 WREG32(RADEON_DAC_CNTL, dac_cntl);
 WREG32(RADEON_DAC_MACRO_CNTL, dac_macro_cntl);

 if (rdev->is_atom_bios)
  radeon_atombios_encoder_dpms_scratch_regs(encoder, (mode == 130) ? 1 : 0);
 else
  radeon_combios_encoder_dpms_scratch_regs(encoder, (mode == 130) ? 1 : 0);

}
