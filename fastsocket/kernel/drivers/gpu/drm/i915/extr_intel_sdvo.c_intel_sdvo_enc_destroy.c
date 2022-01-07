
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_sdvo {int ddc; int * sdvo_lvds_fixed_mode; } ;
struct drm_encoder {int dev; } ;


 int drm_mode_destroy (int ,int *) ;
 int i2c_del_adapter (int *) ;
 int intel_encoder_destroy (struct drm_encoder*) ;
 struct intel_sdvo* to_intel_sdvo (struct drm_encoder*) ;

__attribute__((used)) static void intel_sdvo_enc_destroy(struct drm_encoder *encoder)
{
 struct intel_sdvo *intel_sdvo = to_intel_sdvo(encoder);

 if (intel_sdvo->sdvo_lvds_fixed_mode != ((void*)0))
  drm_mode_destroy(encoder->dev,
     intel_sdvo->sdvo_lvds_fixed_mode);

 i2c_del_adapter(&intel_sdvo->ddc);
 intel_encoder_destroy(encoder);
}
