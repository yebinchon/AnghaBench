
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_encoder {int active_device; } ;
struct drm_encoder {int dummy; } ;
struct drm_display_mode {int dummy; } ;


 int ATOM_DEVICE_LCD_SUPPORT ;
 int drm_mode_set_crtcinfo (struct drm_display_mode*,int ) ;
 int radeon_encoder_set_active_device (struct drm_encoder*) ;
 int radeon_panel_mode_fixup (struct drm_encoder*,struct drm_display_mode*) ;
 struct radeon_encoder* to_radeon_encoder (struct drm_encoder*) ;

__attribute__((used)) static bool radeon_legacy_mode_fixup(struct drm_encoder *encoder,
         const struct drm_display_mode *mode,
         struct drm_display_mode *adjusted_mode)
{
 struct radeon_encoder *radeon_encoder = to_radeon_encoder(encoder);


 radeon_encoder_set_active_device(encoder);
 drm_mode_set_crtcinfo(adjusted_mode, 0);


 if (radeon_encoder->active_device & (ATOM_DEVICE_LCD_SUPPORT))
  radeon_panel_mode_fixup(encoder, adjusted_mode);

 return 1;
}
