
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ lid_state; } ;
struct drm_i915_private {TYPE_1__ opregion; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;
typedef enum drm_connector_status { ____Placeholder_drm_connector_status } drm_connector_status ;


 int connector_status_connected ;
 int connector_status_disconnected ;
 int connector_status_unknown ;
 int i915_panel_ignore_lid ;
 int ioread32 (scalar_t__) ;

enum drm_connector_status
intel_panel_detect(struct drm_device *dev)
{
 struct drm_i915_private *dev_priv = dev->dev_private;


 if (!i915_panel_ignore_lid && dev_priv->opregion.lid_state) {
  return ioread32(dev_priv->opregion.lid_state) & 0x1 ?
   connector_status_connected :
   connector_status_disconnected;
 }

 switch (i915_panel_ignore_lid) {
 case -2:
  return connector_status_connected;
 case -1:
  return connector_status_disconnected;
 default:
  return connector_status_unknown;
 }
}
