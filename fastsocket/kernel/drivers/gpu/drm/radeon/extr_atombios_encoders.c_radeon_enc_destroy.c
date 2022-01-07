
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_encoder {int devices; struct radeon_encoder* enc_priv; } ;
struct drm_encoder {int dummy; } ;


 int ATOM_DEVICE_LCD_SUPPORT ;
 int drm_encoder_cleanup (struct drm_encoder*) ;
 int kfree (struct radeon_encoder*) ;
 int radeon_atom_backlight_exit (struct radeon_encoder*) ;
 struct radeon_encoder* to_radeon_encoder (struct drm_encoder*) ;

void radeon_enc_destroy(struct drm_encoder *encoder)
{
 struct radeon_encoder *radeon_encoder = to_radeon_encoder(encoder);
 if (radeon_encoder->devices & (ATOM_DEVICE_LCD_SUPPORT))
  radeon_atom_backlight_exit(radeon_encoder);
 kfree(radeon_encoder->enc_priv);
 drm_encoder_cleanup(encoder);
 kfree(radeon_encoder);
}
