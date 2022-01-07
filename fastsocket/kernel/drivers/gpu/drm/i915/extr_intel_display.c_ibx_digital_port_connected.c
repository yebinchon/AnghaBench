
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_digital_port {int port; } ;
struct drm_i915_private {int dev; } ;


 scalar_t__ HAS_PCH_IBX (int ) ;
 int I915_READ (int ) ;



 int SDEISR ;
 int SDE_PORTB_HOTPLUG ;
 int SDE_PORTB_HOTPLUG_CPT ;
 int SDE_PORTC_HOTPLUG ;
 int SDE_PORTC_HOTPLUG_CPT ;
 int SDE_PORTD_HOTPLUG ;
 int SDE_PORTD_HOTPLUG_CPT ;

bool ibx_digital_port_connected(struct drm_i915_private *dev_priv,
    struct intel_digital_port *port)
{
 u32 bit;

 if (HAS_PCH_IBX(dev_priv->dev)) {
  switch(port->port) {
  case 130:
   bit = SDE_PORTB_HOTPLUG;
   break;
  case 129:
   bit = SDE_PORTC_HOTPLUG;
   break;
  case 128:
   bit = SDE_PORTD_HOTPLUG;
   break;
  default:
   return 1;
  }
 } else {
  switch(port->port) {
  case 130:
   bit = SDE_PORTB_HOTPLUG_CPT;
   break;
  case 129:
   bit = SDE_PORTC_HOTPLUG_CPT;
   break;
  case 128:
   bit = SDE_PORTD_HOTPLUG_CPT;
   break;
  default:
   return 1;
  }
 }

 return I915_READ(SDEISR) & bit;
}
