
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum dcb_connector_type { ____Placeholder_dcb_connector_type } dcb_connector_type ;
 int DRM_MODE_CONNECTOR_DVID ;
 int DRM_MODE_CONNECTOR_DVII ;
 int DRM_MODE_CONNECTOR_DisplayPort ;
 int DRM_MODE_CONNECTOR_HDMIA ;
 int DRM_MODE_CONNECTOR_LVDS ;
 int DRM_MODE_CONNECTOR_TV ;
 int DRM_MODE_CONNECTOR_Unknown ;
 int DRM_MODE_CONNECTOR_VGA ;
 int DRM_MODE_CONNECTOR_eDP ;

__attribute__((used)) static int
drm_conntype_from_dcb(enum dcb_connector_type dcb)
{
 switch (dcb) {
 case 129 : return DRM_MODE_CONNECTOR_VGA;
 case 132 :
 case 131 :
 case 130 : return DRM_MODE_CONNECTOR_TV;
 case 143 :
 case 142 :
 case 137 : return DRM_MODE_CONNECTOR_DVII;
 case 138 : return DRM_MODE_CONNECTOR_DVID;
 case 134 :
 case 133: return DRM_MODE_CONNECTOR_LVDS;
 case 141:
 case 140:
 case 139 : return DRM_MODE_CONNECTOR_DisplayPort;
 case 128 : return DRM_MODE_CONNECTOR_eDP;
 case 136 :
 case 135 : return DRM_MODE_CONNECTOR_HDMIA;
 default:
  break;
 }

 return DRM_MODE_CONNECTOR_Unknown;
}
