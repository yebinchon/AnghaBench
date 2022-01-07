
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct radeon_connector {scalar_t__ ddc_bus; } ;
struct drm_encoder {int dummy; } ;
struct drm_display_mode {int height_mm; int width_mm; } ;
struct TYPE_2__ {int height_mm; int width_mm; } ;
struct drm_connector {TYPE_1__ display_info; } ;


 int drm_mode_probed_add (struct drm_connector*,struct drm_display_mode*) ;
 int radeon_add_common_modes (struct drm_encoder*,struct drm_connector*) ;
 struct drm_encoder* radeon_best_single_encoder (struct drm_connector*) ;
 int radeon_ddc_get_modes (struct radeon_connector*) ;
 int radeon_fixup_lvds_native_mode (struct drm_encoder*,struct drm_connector*) ;
 struct drm_display_mode* radeon_fp_native_mode (struct drm_encoder*) ;
 struct radeon_connector* to_radeon_connector (struct drm_connector*) ;

__attribute__((used)) static int radeon_lvds_get_modes(struct drm_connector *connector)
{
 struct radeon_connector *radeon_connector = to_radeon_connector(connector);
 struct drm_encoder *encoder;
 int ret = 0;
 struct drm_display_mode *mode;

 if (radeon_connector->ddc_bus) {
  ret = radeon_ddc_get_modes(radeon_connector);
  if (ret > 0) {
   encoder = radeon_best_single_encoder(connector);
   if (encoder) {
    radeon_fixup_lvds_native_mode(encoder, connector);

    radeon_add_common_modes(encoder, connector);
   }
   return ret;
  }
 }

 encoder = radeon_best_single_encoder(connector);
 if (!encoder)
  return 0;


 mode = radeon_fp_native_mode(encoder);
 if (mode) {
  ret = 1;
  drm_mode_probed_add(connector, mode);

  connector->display_info.width_mm = mode->width_mm;
  connector->display_info.height_mm = mode->height_mm;

  radeon_add_common_modes(encoder, connector);
 }

 return ret;
}
