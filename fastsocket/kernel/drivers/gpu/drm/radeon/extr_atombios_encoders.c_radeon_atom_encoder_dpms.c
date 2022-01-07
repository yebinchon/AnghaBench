
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_encoder {int encoder_id; int active_device; int devices; } ;
struct radeon_device {int dummy; } ;
struct drm_encoder {struct drm_device* dev; } ;
struct drm_device {struct radeon_device* dev_private; } ;


 int ASIC_IS_DCE3 (struct radeon_device*) ;
 int ASIC_IS_DCE5 (struct radeon_device*) ;
 int ATOM_DISABLE ;
 int ATOM_ENABLE ;
 int DRM_DEBUG_KMS (char*,int,int,int ,int ) ;
 int atombios_dac_setup (struct drm_encoder*,int ) ;
 int atombios_dvo_setup (struct drm_encoder*,int ) ;
 int radeon_atom_encoder_dpms_avivo (struct drm_encoder*,int) ;
 int radeon_atom_encoder_dpms_dig (struct drm_encoder*,int) ;
 int radeon_atom_encoder_dpms_ext (struct drm_encoder*,struct drm_encoder*,int) ;
 int radeon_atombios_encoder_dpms_scratch_regs (struct drm_encoder*,int) ;
 struct drm_encoder* radeon_get_external_encoder (struct drm_encoder*) ;
 struct radeon_encoder* to_radeon_encoder (struct drm_encoder*) ;

__attribute__((used)) static void
radeon_atom_encoder_dpms(struct drm_encoder *encoder, int mode)
{
 struct drm_device *dev = encoder->dev;
 struct radeon_device *rdev = dev->dev_private;
 struct radeon_encoder *radeon_encoder = to_radeon_encoder(encoder);
 struct drm_encoder *ext_encoder = radeon_get_external_encoder(encoder);

 DRM_DEBUG_KMS("encoder dpms %d to mode %d, devices %08x, active_devices %08x\n",
    radeon_encoder->encoder_id, mode, radeon_encoder->devices,
    radeon_encoder->active_device);
 switch (radeon_encoder->encoder_id) {
 case 131:
 case 134:
 case 133:
 case 132:
 case 139:
 case 140:
 case 141:
 case 137:
  radeon_atom_encoder_dpms_avivo(encoder, mode);
  break;
 case 130:
 case 129:
 case 128:
 case 135:
  radeon_atom_encoder_dpms_dig(encoder, mode);
  break;
 case 136:
  if (ASIC_IS_DCE5(rdev)) {
   switch (mode) {
   case 145:
    atombios_dvo_setup(encoder, ATOM_ENABLE);
    break;
   case 144:
   case 143:
   case 146:
    atombios_dvo_setup(encoder, ATOM_DISABLE);
    break;
   }
  } else if (ASIC_IS_DCE3(rdev))
   radeon_atom_encoder_dpms_dig(encoder, mode);
  else
   radeon_atom_encoder_dpms_avivo(encoder, mode);
  break;
 case 142:
 case 138:
  if (ASIC_IS_DCE5(rdev)) {
   switch (mode) {
   case 145:
    atombios_dac_setup(encoder, ATOM_ENABLE);
    break;
   case 144:
   case 143:
   case 146:
    atombios_dac_setup(encoder, ATOM_DISABLE);
    break;
   }
  } else
   radeon_atom_encoder_dpms_avivo(encoder, mode);
  break;
 default:
  return;
 }

 if (ext_encoder)
  radeon_atom_encoder_dpms_ext(encoder, ext_encoder, mode);

 radeon_atombios_encoder_dpms_scratch_regs(encoder, (mode == 145) ? 1 : 0);

}
