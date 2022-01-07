
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct intel_dp {int dummy; } ;
struct intel_digital_port {int port; } ;
struct drm_i915_private {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;
typedef enum drm_connector_status { ____Placeholder_drm_connector_status } drm_connector_status ;


 int I915_READ (int ) ;
 int PORTB_HOTPLUG_LIVE_STATUS ;
 int PORTC_HOTPLUG_LIVE_STATUS ;
 int PORTD_HOTPLUG_LIVE_STATUS ;



 int PORT_HOTPLUG_STAT ;
 int connector_status_disconnected ;
 int connector_status_unknown ;
 struct intel_digital_port* dp_to_dig_port (struct intel_dp*) ;
 int intel_dp_detect_dpcd (struct intel_dp*) ;
 struct drm_device* intel_dp_to_dev (struct intel_dp*) ;

__attribute__((used)) static enum drm_connector_status
g4x_dp_detect(struct intel_dp *intel_dp)
{
 struct drm_device *dev = intel_dp_to_dev(intel_dp);
 struct drm_i915_private *dev_priv = dev->dev_private;
 struct intel_digital_port *intel_dig_port = dp_to_dig_port(intel_dp);
 uint32_t bit;

 switch (intel_dig_port->port) {
 case 130:
  bit = PORTB_HOTPLUG_LIVE_STATUS;
  break;
 case 129:
  bit = PORTC_HOTPLUG_LIVE_STATUS;
  break;
 case 128:
  bit = PORTD_HOTPLUG_LIVE_STATUS;
  break;
 default:
  return connector_status_unknown;
 }

 if ((I915_READ(PORT_HOTPLUG_STAT) & bit) == 0)
  return connector_status_disconnected;

 return intel_dp_detect_dpcd(intel_dp);
}
