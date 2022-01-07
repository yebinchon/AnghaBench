
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct radeon_device {scalar_t__ is_atom_bios; } ;
struct drm_encoder {struct drm_device* dev; } ;
struct drm_device {struct radeon_device* dev_private; } ;


 int DRM_DEBUG_KMS (char*) ;




 int RADEON_FP2_BLANK_EN ;
 int RADEON_FP2_DVO_EN ;
 int RADEON_FP2_GEN_CNTL ;
 int RADEON_FP2_ON ;
 int RREG32 (int ) ;
 int WREG32 (int ,int) ;
 int radeon_atombios_encoder_dpms_scratch_regs (struct drm_encoder*,int) ;
 int radeon_combios_encoder_dpms_scratch_regs (struct drm_encoder*,int) ;

__attribute__((used)) static void radeon_legacy_tmds_ext_dpms(struct drm_encoder *encoder, int mode)
{
 struct drm_device *dev = encoder->dev;
 struct radeon_device *rdev = dev->dev_private;
 uint32_t fp2_gen_cntl = RREG32(RADEON_FP2_GEN_CNTL);
 DRM_DEBUG_KMS("\n");

 switch (mode) {
 case 130:
  fp2_gen_cntl &= ~RADEON_FP2_BLANK_EN;
  fp2_gen_cntl |= (RADEON_FP2_ON | RADEON_FP2_DVO_EN);
  break;
 case 129:
 case 128:
 case 131:
  fp2_gen_cntl |= RADEON_FP2_BLANK_EN;
  fp2_gen_cntl &= ~(RADEON_FP2_ON | RADEON_FP2_DVO_EN);
  break;
 }

 WREG32(RADEON_FP2_GEN_CNTL, fp2_gen_cntl);

 if (rdev->is_atom_bios)
  radeon_atombios_encoder_dpms_scratch_regs(encoder, (mode == 130) ? 1 : 0);
 else
  radeon_combios_encoder_dpms_scratch_regs(encoder, (mode == 130) ? 1 : 0);

}
