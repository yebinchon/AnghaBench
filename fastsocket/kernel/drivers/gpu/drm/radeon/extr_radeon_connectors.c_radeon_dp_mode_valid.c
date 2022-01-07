
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_display_mode {int hdisplay; int vdisplay; } ;
struct radeon_encoder {scalar_t__ rmx_type; struct drm_display_mode native_mode; } ;
struct radeon_connector_atom_dig {scalar_t__ dp_sink_type; } ;
struct radeon_connector {struct radeon_connector_atom_dig* con_priv; } ;
struct drm_encoder {int dummy; } ;
struct drm_connector {scalar_t__ connector_type; } ;


 scalar_t__ CONNECTOR_OBJECT_ID_DISPLAYPORT ;
 scalar_t__ CONNECTOR_OBJECT_ID_eDP ;
 scalar_t__ DRM_MODE_CONNECTOR_LVDS ;
 scalar_t__ DRM_MODE_CONNECTOR_eDP ;
 int MODE_OK ;
 int MODE_PANEL ;
 scalar_t__ RMX_OFF ;
 struct drm_encoder* radeon_best_single_encoder (struct drm_connector*) ;
 int radeon_dp_mode_valid_helper (struct drm_connector*,struct drm_display_mode*) ;
 struct radeon_connector* to_radeon_connector (struct drm_connector*) ;
 struct radeon_encoder* to_radeon_encoder (struct drm_encoder*) ;

__attribute__((used)) static int radeon_dp_mode_valid(struct drm_connector *connector,
      struct drm_display_mode *mode)
{
 struct radeon_connector *radeon_connector = to_radeon_connector(connector);
 struct radeon_connector_atom_dig *radeon_dig_connector = radeon_connector->con_priv;



 if ((connector->connector_type == DRM_MODE_CONNECTOR_eDP) ||
     (connector->connector_type == DRM_MODE_CONNECTOR_LVDS)) {
  struct drm_encoder *encoder = radeon_best_single_encoder(connector);

  if ((mode->hdisplay < 320) || (mode->vdisplay < 240))
   return MODE_PANEL;

  if (encoder) {
   struct radeon_encoder *radeon_encoder = to_radeon_encoder(encoder);
   struct drm_display_mode *native_mode = &radeon_encoder->native_mode;




   if ((mode->hdisplay > native_mode->hdisplay) ||
       (mode->vdisplay > native_mode->vdisplay))
    return MODE_PANEL;


   if (radeon_encoder->rmx_type == RMX_OFF) {
    if ((mode->hdisplay != native_mode->hdisplay) ||
        (mode->vdisplay != native_mode->vdisplay))
     return MODE_PANEL;
   }
  }
  return MODE_OK;
 } else {
  if ((radeon_dig_connector->dp_sink_type == CONNECTOR_OBJECT_ID_DISPLAYPORT) ||
      (radeon_dig_connector->dp_sink_type == CONNECTOR_OBJECT_ID_eDP))
   return radeon_dp_mode_valid_helper(connector, mode);
  else
   return MODE_OK;
 }
}
