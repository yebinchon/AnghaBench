
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct radeon_encoder_atom_dig {int lcd_misc; } ;
struct radeon_encoder {struct radeon_encoder_atom_dig* enc_priv; } ;
struct radeon_device {int dummy; } ;
struct radeon_connector_atom_dig {int dp_sink_type; } ;
struct radeon_connector {int edid; struct radeon_connector_atom_dig* con_priv; int use_digital; } ;
struct drm_encoder {int dummy; } ;
struct drm_device {struct radeon_device* dev_private; } ;
struct drm_connector_helper_funcs {struct drm_encoder* (* best_encoder ) (struct drm_connector*) ;} ;
struct TYPE_2__ {int bpc; } ;
struct drm_connector {int connector_type; struct drm_connector_helper_funcs* helper_private; TYPE_1__ display_info; struct drm_device* dev; } ;


 int ASIC_IS_DCE41 (struct radeon_device*) ;
 int ASIC_IS_DCE5 (struct radeon_device*) ;
 int ATOM_PANEL_MISC_V13_6BIT_PER_COLOR ;
 int ATOM_PANEL_MISC_V13_8BIT_PER_COLOR ;
 int CONNECTOR_OBJECT_ID_DISPLAYPORT ;
 int CONNECTOR_OBJECT_ID_eDP ;







 int drm_detect_hdmi_monitor (int ) ;
 struct drm_encoder* stub1 (struct drm_connector*) ;
 struct radeon_connector* to_radeon_connector (struct drm_connector*) ;
 struct radeon_encoder* to_radeon_encoder (struct drm_encoder*) ;

int radeon_get_monitor_bpc(struct drm_connector *connector)
{
 struct drm_device *dev = connector->dev;
 struct radeon_device *rdev = dev->dev_private;
 struct radeon_connector *radeon_connector = to_radeon_connector(connector);
 struct radeon_connector_atom_dig *dig_connector;
 int bpc = 8;

 switch (connector->connector_type) {
 case 133:
 case 130:
  if (radeon_connector->use_digital) {
   if (drm_detect_hdmi_monitor(radeon_connector->edid)) {
    if (connector->display_info.bpc)
     bpc = connector->display_info.bpc;
   }
  }
  break;
 case 134:
 case 131:
  if (drm_detect_hdmi_monitor(radeon_connector->edid)) {
   if (connector->display_info.bpc)
    bpc = connector->display_info.bpc;
  }
  break;
 case 132:
  dig_connector = radeon_connector->con_priv;
  if ((dig_connector->dp_sink_type == CONNECTOR_OBJECT_ID_DISPLAYPORT) ||
      (dig_connector->dp_sink_type == CONNECTOR_OBJECT_ID_eDP) ||
      drm_detect_hdmi_monitor(radeon_connector->edid)) {
   if (connector->display_info.bpc)
    bpc = connector->display_info.bpc;
  }
  break;
 case 128:
 case 129:
  if (connector->display_info.bpc)
   bpc = connector->display_info.bpc;
  else if (ASIC_IS_DCE41(rdev) || ASIC_IS_DCE5(rdev)) {
   struct drm_connector_helper_funcs *connector_funcs =
    connector->helper_private;
   struct drm_encoder *encoder = connector_funcs->best_encoder(connector);
   struct radeon_encoder *radeon_encoder = to_radeon_encoder(encoder);
   struct radeon_encoder_atom_dig *dig = radeon_encoder->enc_priv;

   if (dig->lcd_misc & ATOM_PANEL_MISC_V13_6BIT_PER_COLOR)
    bpc = 6;
   else if (dig->lcd_misc & ATOM_PANEL_MISC_V13_8BIT_PER_COLOR)
    bpc = 8;
  }
  break;
 }
 return bpc;
}
