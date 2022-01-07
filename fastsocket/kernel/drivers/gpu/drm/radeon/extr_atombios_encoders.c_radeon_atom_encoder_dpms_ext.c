
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;
struct drm_encoder {struct drm_device* dev; } ;
struct drm_device {struct radeon_device* dev_private; } ;


 int ASIC_IS_DCE41 (struct radeon_device*) ;
 int ASIC_IS_DCE61 (struct radeon_device*) ;
 int ATOM_DISABLE ;
 int ATOM_ENABLE ;




 int EXTERNAL_ENCODER_ACTION_V3_DISABLE_OUTPUT ;
 int EXTERNAL_ENCODER_ACTION_V3_ENABLE_OUTPUT ;
 int EXTERNAL_ENCODER_ACTION_V3_ENCODER_BLANKING ;
 int EXTERNAL_ENCODER_ACTION_V3_ENCODER_BLANKING_OFF ;
 int atombios_external_encoder_setup (struct drm_encoder*,struct drm_encoder*,int ) ;

__attribute__((used)) static void
radeon_atom_encoder_dpms_ext(struct drm_encoder *encoder,
        struct drm_encoder *ext_encoder,
        int mode)
{
 struct drm_device *dev = encoder->dev;
 struct radeon_device *rdev = dev->dev_private;

 switch (mode) {
 case 130:
 default:
  if (ASIC_IS_DCE41(rdev) || ASIC_IS_DCE61(rdev)) {
   atombios_external_encoder_setup(encoder, ext_encoder,
       EXTERNAL_ENCODER_ACTION_V3_ENABLE_OUTPUT);
   atombios_external_encoder_setup(encoder, ext_encoder,
       EXTERNAL_ENCODER_ACTION_V3_ENCODER_BLANKING_OFF);
  } else
   atombios_external_encoder_setup(encoder, ext_encoder, ATOM_ENABLE);
  break;
 case 129:
 case 128:
 case 131:
  if (ASIC_IS_DCE41(rdev) || ASIC_IS_DCE61(rdev)) {
   atombios_external_encoder_setup(encoder, ext_encoder,
       EXTERNAL_ENCODER_ACTION_V3_ENCODER_BLANKING);
   atombios_external_encoder_setup(encoder, ext_encoder,
       EXTERNAL_ENCODER_ACTION_V3_DISABLE_OUTPUT);
  } else
   atombios_external_encoder_setup(encoder, ext_encoder, ATOM_DISABLE);
  break;
 }
}
