
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_display_mode {int hdisplay; int vdisplay; } ;
struct radeon_encoder {struct drm_display_mode native_mode; } ;
struct radeon_connector {scalar_t__ edid; TYPE_1__* ddc_bus; int base; } ;
struct drm_encoder {int dummy; } ;
struct drm_connector {int dummy; } ;
typedef enum drm_connector_status { ____Placeholder_drm_connector_status } drm_connector_status ;
struct TYPE_2__ {int adapter; } ;


 int connector_status_connected ;
 int connector_status_disconnected ;
 scalar_t__ drm_get_edid (int *,int *) ;
 struct drm_encoder* radeon_best_single_encoder (struct drm_connector*) ;
 int radeon_connector_update_scratch_regs (struct drm_connector*,int) ;
 struct radeon_connector* to_radeon_connector (struct drm_connector*) ;
 struct radeon_encoder* to_radeon_encoder (struct drm_encoder*) ;

__attribute__((used)) static enum drm_connector_status
radeon_lvds_detect(struct drm_connector *connector, bool force)
{
 struct radeon_connector *radeon_connector = to_radeon_connector(connector);
 struct drm_encoder *encoder = radeon_best_single_encoder(connector);
 enum drm_connector_status ret = connector_status_disconnected;

 if (encoder) {
  struct radeon_encoder *radeon_encoder = to_radeon_encoder(encoder);
  struct drm_display_mode *native_mode = &radeon_encoder->native_mode;


  if (native_mode->hdisplay >= 320 && native_mode->vdisplay >= 240)
   ret = connector_status_connected;

 }


 if (radeon_connector->edid)
  ret = connector_status_connected;
 else {
  if (radeon_connector->ddc_bus) {
   radeon_connector->edid = drm_get_edid(&radeon_connector->base,
             &radeon_connector->ddc_bus->adapter);
   if (radeon_connector->edid)
    ret = connector_status_connected;
  }
 }


 radeon_connector_update_scratch_regs(connector, ret);
 return ret;
}
