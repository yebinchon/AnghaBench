
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_encoder {scalar_t__ encoder_id; } ;
struct radeon_device {int dummy; } ;
struct radeon_connector_atom_dig {int dp_sink_type; } ;
struct radeon_connector {int edid; struct radeon_connector_atom_dig* con_priv; int use_digital; } ;
struct drm_encoder {struct drm_device* dev; } ;
struct drm_device {struct radeon_device* dev_private; } ;
struct drm_connector {int connector_type; } ;


 int ASIC_IS_DCE6 (struct radeon_device*) ;
 int ATOM_ENCODER_MODE_CRT ;
 int ATOM_ENCODER_MODE_DP ;
 int ATOM_ENCODER_MODE_DVI ;
 int ATOM_ENCODER_MODE_DVO ;
 int ATOM_ENCODER_MODE_HDMI ;
 int ATOM_ENCODER_MODE_LVDS ;
 int ATOM_ENCODER_MODE_TV ;
 int CONNECTOR_OBJECT_ID_DISPLAYPORT ;
 int CONNECTOR_OBJECT_ID_eDP ;
 scalar_t__ ENCODER_OBJECT_ID_INTERNAL_DVO1 ;
 scalar_t__ ENCODER_OBJECT_ID_INTERNAL_KLDSCP_DVO1 ;
 scalar_t__ ENCODER_OBJECT_ID_NONE ;
 int drm_detect_hdmi_monitor (int ) ;
 int radeon_audio ;
 scalar_t__ radeon_encoder_get_dp_bridge_encoder_id (struct drm_encoder*) ;
 struct drm_connector* radeon_get_connector_for_encoder (struct drm_encoder*) ;
 struct drm_connector* radeon_get_connector_for_encoder_init (struct drm_encoder*) ;
 struct radeon_connector* to_radeon_connector (struct drm_connector*) ;
 struct radeon_encoder* to_radeon_encoder (struct drm_encoder*) ;

int
atombios_get_encoder_mode(struct drm_encoder *encoder)
{
 struct drm_device *dev = encoder->dev;
 struct radeon_device *rdev = dev->dev_private;
 struct radeon_encoder *radeon_encoder = to_radeon_encoder(encoder);
 struct drm_connector *connector;
 struct radeon_connector *radeon_connector;
 struct radeon_connector_atom_dig *dig_connector;


 if (radeon_encoder_get_dp_bridge_encoder_id(encoder) != ENCODER_OBJECT_ID_NONE)
  return ATOM_ENCODER_MODE_DP;


 if ((radeon_encoder->encoder_id == ENCODER_OBJECT_ID_INTERNAL_DVO1) ||
     (radeon_encoder->encoder_id == ENCODER_OBJECT_ID_INTERNAL_KLDSCP_DVO1))
  return ATOM_ENCODER_MODE_DVO;

 connector = radeon_get_connector_for_encoder(encoder);



 if (!connector)
  connector = radeon_get_connector_for_encoder_init(encoder);
 radeon_connector = to_radeon_connector(connector);

 switch (connector->connector_type) {
 case 135:
 case 132:
  if (drm_detect_hdmi_monitor(radeon_connector->edid) &&
      radeon_audio &&
      !ASIC_IS_DCE6(rdev))
   return ATOM_ENCODER_MODE_HDMI;
  else if (radeon_connector->use_digital)
   return ATOM_ENCODER_MODE_DVI;
  else
   return ATOM_ENCODER_MODE_CRT;
  break;
 case 136:
 case 133:
 default:
  if (drm_detect_hdmi_monitor(radeon_connector->edid) &&
      radeon_audio &&
      !ASIC_IS_DCE6(rdev))
   return ATOM_ENCODER_MODE_HDMI;
  else
   return ATOM_ENCODER_MODE_DVI;
  break;
 case 131:
  return ATOM_ENCODER_MODE_LVDS;
  break;
 case 134:
  dig_connector = radeon_connector->con_priv;
  if ((dig_connector->dp_sink_type == CONNECTOR_OBJECT_ID_DISPLAYPORT) ||
      (dig_connector->dp_sink_type == CONNECTOR_OBJECT_ID_eDP))
   return ATOM_ENCODER_MODE_DP;
  else if (drm_detect_hdmi_monitor(radeon_connector->edid) &&
    radeon_audio &&
    !ASIC_IS_DCE6(rdev))
   return ATOM_ENCODER_MODE_HDMI;
  else
   return ATOM_ENCODER_MODE_DVI;
  break;
 case 128:
  return ATOM_ENCODER_MODE_DP;
 case 137:
 case 129:
  return ATOM_ENCODER_MODE_CRT;
  break;
 case 138:
 case 130:
 case 139:

  return ATOM_ENCODER_MODE_TV;

  break;
 }
}
