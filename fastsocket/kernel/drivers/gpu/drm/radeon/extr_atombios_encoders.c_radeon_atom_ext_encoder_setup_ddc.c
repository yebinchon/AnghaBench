
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_encoder {int dummy; } ;


 int EXTERNAL_ENCODER_ACTION_V3_DDC_SETUP ;
 int atombios_external_encoder_setup (struct drm_encoder*,struct drm_encoder*,int ) ;
 struct drm_encoder* radeon_get_external_encoder (struct drm_encoder*) ;

void
radeon_atom_ext_encoder_setup_ddc(struct drm_encoder *encoder)
{
 struct drm_encoder *ext_encoder = radeon_get_external_encoder(encoder);

 if (ext_encoder)

  atombios_external_encoder_setup(encoder, ext_encoder,
      EXTERNAL_ENCODER_ACTION_V3_DDC_SETUP);

}
