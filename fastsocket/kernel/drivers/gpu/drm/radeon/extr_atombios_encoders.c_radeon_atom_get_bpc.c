
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct drm_encoder {int dummy; } ;
struct drm_connector {int dummy; } ;


 int PANEL_10BIT_PER_COLOR ;
 int PANEL_12BIT_PER_COLOR ;
 int PANEL_16BIT_PER_COLOR ;
 int PANEL_6BIT_PER_COLOR ;
 int PANEL_8BIT_PER_COLOR ;
 int PANEL_BPC_UNDEFINE ;
 struct drm_connector* radeon_get_connector_for_encoder (struct drm_encoder*) ;
 int radeon_get_monitor_bpc (struct drm_connector*) ;

__attribute__((used)) static u8 radeon_atom_get_bpc(struct drm_encoder *encoder)
{
 struct drm_connector *connector = radeon_get_connector_for_encoder(encoder);
 int bpc = 8;

 if (connector)
  bpc = radeon_get_monitor_bpc(connector);

 switch (bpc) {
 case 0:
  return PANEL_BPC_UNDEFINE;
 case 6:
  return PANEL_6BIT_PER_COLOR;
 case 8:
 default:
  return PANEL_8BIT_PER_COLOR;
 case 10:
  return PANEL_10BIT_PER_COLOR;
 case 12:
  return PANEL_12BIT_PER_COLOR;
 case 16:
  return PANEL_16BIT_PER_COLOR;
 }
}
