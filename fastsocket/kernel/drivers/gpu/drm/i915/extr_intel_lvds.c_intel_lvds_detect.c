
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int dummy; } ;
struct drm_connector {struct drm_device* dev; } ;
typedef enum drm_connector_status { ____Placeholder_drm_connector_status } drm_connector_status ;


 int connector_status_connected ;
 int connector_status_unknown ;
 int intel_panel_detect (struct drm_device*) ;

__attribute__((used)) static enum drm_connector_status
intel_lvds_detect(struct drm_connector *connector, bool force)
{
 struct drm_device *dev = connector->dev;
 enum drm_connector_status status;

 status = intel_panel_detect(dev);
 if (status != connector_status_unknown)
  return status;

 return connector_status_connected;
}
