
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct sdvo_device_mapping {int i2c_pin; scalar_t__ initialized; } ;
struct intel_sdvo {int i2c; scalar_t__ is_sdvob; } ;
struct drm_i915_private {struct sdvo_device_mapping* sdvo_mappings; } ;


 int GMBUS_PORT_DPB ;
 int intel_gmbus_force_bit (int ,int) ;
 int intel_gmbus_get_adapter (struct drm_i915_private*,int ) ;
 scalar_t__ intel_gmbus_is_port_valid (int ) ;

__attribute__((used)) static void
intel_sdvo_select_i2c_bus(struct drm_i915_private *dev_priv,
     struct intel_sdvo *sdvo, u32 reg)
{
 struct sdvo_device_mapping *mapping;
 u8 pin;

 if (sdvo->is_sdvob)
  mapping = &dev_priv->sdvo_mappings[0];
 else
  mapping = &dev_priv->sdvo_mappings[1];

 if (mapping->initialized && intel_gmbus_is_port_valid(mapping->i2c_pin))
  pin = mapping->i2c_pin;
 else
  pin = GMBUS_PORT_DPB;

 sdvo->i2c = intel_gmbus_get_adapter(dev_priv, pin);




 intel_gmbus_force_bit(sdvo->i2c, 1);
}
