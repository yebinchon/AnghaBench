
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct radeon_device {int dummy; } ;
struct radeon_connector_atom_dig {scalar_t__ dp_sink_type; } ;
struct TYPE_2__ {scalar_t__ hpd; } ;
struct radeon_connector {TYPE_1__ hpd; struct radeon_connector_atom_dig* con_priv; } ;
struct drm_device {struct radeon_device* dev_private; } ;
struct drm_connector {int dpms; scalar_t__ connector_type; struct drm_device* dev; } ;


 scalar_t__ CONNECTOR_OBJECT_ID_DISPLAYPORT ;
 scalar_t__ DRM_MODE_CONNECTOR_DisplayPort ;
 int DRM_MODE_DPMS_OFF ;
 int DRM_MODE_DPMS_ON ;
 scalar_t__ RADEON_HPD_NONE ;
 int drm_helper_connector_dpms (struct drm_connector*,int) ;
 scalar_t__ radeon_dp_getsinktype (struct radeon_connector*) ;
 scalar_t__ radeon_dp_needs_link_train (struct radeon_connector*) ;
 int radeon_hpd_sense (struct radeon_device*,scalar_t__) ;
 int radeon_hpd_set_polarity (struct radeon_device*,scalar_t__) ;
 struct radeon_connector* to_radeon_connector (struct drm_connector*) ;

void radeon_connector_hotplug(struct drm_connector *connector)
{
 struct drm_device *dev = connector->dev;
 struct radeon_device *rdev = dev->dev_private;
 struct radeon_connector *radeon_connector = to_radeon_connector(connector);




 if (radeon_connector->hpd.hpd == RADEON_HPD_NONE)
  return;

 radeon_hpd_set_polarity(rdev, radeon_connector->hpd.hpd);


 if (connector->dpms != DRM_MODE_DPMS_ON)
  return;


 if (connector->connector_type == DRM_MODE_CONNECTOR_DisplayPort) {
  struct radeon_connector_atom_dig *dig_connector =
   radeon_connector->con_priv;


  if (dig_connector->dp_sink_type != CONNECTOR_OBJECT_ID_DISPLAYPORT)
   return;


  dig_connector->dp_sink_type = radeon_dp_getsinktype(radeon_connector);



  if (dig_connector->dp_sink_type == CONNECTOR_OBJECT_ID_DISPLAYPORT) {
   int saved_dpms = connector->dpms;

   if (!radeon_hpd_sense(rdev, radeon_connector->hpd.hpd)) {
    drm_helper_connector_dpms(connector, DRM_MODE_DPMS_OFF);
   } else if (radeon_dp_needs_link_train(radeon_connector)) {




    connector->dpms = DRM_MODE_DPMS_OFF;
    drm_helper_connector_dpms(connector, DRM_MODE_DPMS_ON);
   }
   connector->dpms = saved_dpms;
  }
 }
}
