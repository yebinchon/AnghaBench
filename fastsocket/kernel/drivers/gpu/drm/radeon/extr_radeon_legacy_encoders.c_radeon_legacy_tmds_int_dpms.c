
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct radeon_device {scalar_t__ is_atom_bios; } ;
struct drm_encoder {struct drm_device* dev; } ;
struct drm_device {struct radeon_device* dev_private; } ;


 int DRM_DEBUG_KMS (char*) ;




 int RADEON_FP_FPON ;
 int RADEON_FP_GEN_CNTL ;
 int RADEON_FP_TMDS_EN ;
 int RREG32 (int ) ;
 int WREG32 (int ,int) ;
 int radeon_atombios_encoder_dpms_scratch_regs (struct drm_encoder*,int) ;
 int radeon_combios_encoder_dpms_scratch_regs (struct drm_encoder*,int) ;

__attribute__((used)) static void radeon_legacy_tmds_int_dpms(struct drm_encoder *encoder, int mode)
{
 struct drm_device *dev = encoder->dev;
 struct radeon_device *rdev = dev->dev_private;
 uint32_t fp_gen_cntl = RREG32(RADEON_FP_GEN_CNTL);
 DRM_DEBUG_KMS("\n");

 switch (mode) {
 case 130:
  fp_gen_cntl |= (RADEON_FP_FPON | RADEON_FP_TMDS_EN);
  break;
 case 129:
 case 128:
 case 131:
  fp_gen_cntl &= ~(RADEON_FP_FPON | RADEON_FP_TMDS_EN);
  break;
 }

 WREG32(RADEON_FP_GEN_CNTL, fp_gen_cntl);

 if (rdev->is_atom_bios)
  radeon_atombios_encoder_dpms_scratch_regs(encoder, (mode == 130) ? 1 : 0);
 else
  radeon_combios_encoder_dpms_scratch_regs(encoder, (mode == 130) ? 1 : 0);

}
