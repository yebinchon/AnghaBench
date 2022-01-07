
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int dummy; } ;
struct radeon_connector_atom_dig {int dp_sink_type; } ;
struct radeon_connector {int edid; struct radeon_connector_atom_dig* con_priv; int use_digital; } ;
struct drm_encoder {struct drm_device* dev; } ;
struct drm_device {struct radeon_device* dev_private; } ;
struct drm_connector {int connector_type; } ;


 int ASIC_IS_DCE6 (struct radeon_device*) ;
 int CONNECTOR_OBJECT_ID_DISPLAYPORT ;
 int CONNECTOR_OBJECT_ID_eDP ;





 int drm_detect_hdmi_monitor (int ) ;
 struct drm_connector* radeon_get_connector_for_encoder (struct drm_encoder*) ;
 struct drm_connector* radeon_get_connector_for_encoder_init (struct drm_encoder*) ;
 struct radeon_connector* to_radeon_connector (struct drm_connector*) ;

bool radeon_dig_monitor_is_duallink(struct drm_encoder *encoder,
        u32 pixel_clock)
{
 struct drm_device *dev = encoder->dev;
 struct radeon_device *rdev = dev->dev_private;
 struct drm_connector *connector;
 struct radeon_connector *radeon_connector;
 struct radeon_connector_atom_dig *dig_connector;

 connector = radeon_get_connector_for_encoder(encoder);



 if (!connector)
  connector = radeon_get_connector_for_encoder_init(encoder);
 radeon_connector = to_radeon_connector(connector);

 switch (connector->connector_type) {
 case 131:
 case 128:
  if (radeon_connector->use_digital) {

   if (ASIC_IS_DCE6(rdev) && drm_detect_hdmi_monitor(radeon_connector->edid)) {
    if (pixel_clock > 340000)
     return 1;
    else
     return 0;
   } else {
    if (pixel_clock > 165000)
     return 1;
    else
     return 0;
   }
  } else
   return 0;
 case 132:
 case 129:
 case 130:
  dig_connector = radeon_connector->con_priv;
  if ((dig_connector->dp_sink_type == CONNECTOR_OBJECT_ID_DISPLAYPORT) ||
      (dig_connector->dp_sink_type == CONNECTOR_OBJECT_ID_eDP))
   return 0;
  else {

   if (ASIC_IS_DCE6(rdev) && drm_detect_hdmi_monitor(radeon_connector->edid)) {
    if (pixel_clock > 340000)
     return 1;
    else
     return 0;
   } else {
    if (pixel_clock > 165000)
     return 1;
    else
     return 0;
   }
  }
 default:
  return 0;
 }
}
