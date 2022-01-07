
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sdvo_device_mapping {int ddc_pin; scalar_t__ initialized; } ;
struct intel_sdvo {int ddc_bus; scalar_t__ is_sdvob; } ;
struct drm_i915_private {struct sdvo_device_mapping* sdvo_mappings; } ;


 int intel_sdvo_guess_ddc_bus (struct intel_sdvo*) ;

__attribute__((used)) static void
intel_sdvo_select_ddc_bus(struct drm_i915_private *dev_priv,
     struct intel_sdvo *sdvo, u32 reg)
{
 struct sdvo_device_mapping *mapping;

 if (sdvo->is_sdvob)
  mapping = &(dev_priv->sdvo_mappings[0]);
 else
  mapping = &(dev_priv->sdvo_mappings[1]);

 if (mapping->initialized)
  sdvo->ddc_bus = 1 << ((mapping->ddc_pin & 0xf0) >> 4);
 else
  intel_sdvo_guess_ddc_bus(sdvo);
}
