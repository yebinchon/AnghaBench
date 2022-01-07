
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct drm_device {scalar_t__ dev_private; } ;
struct TYPE_2__ {int hotplug_supported_mask; } ;
typedef TYPE_1__ drm_i915_private_t ;


 int CRT_HOTPLUG_INT_EN ;
 int CRT_HOTPLUG_INT_STATUS ;
 int CRT_HOTPLUG_VOLTAGE_COMPARE_50 ;
 scalar_t__ I915_HAS_HOTPLUG (struct drm_device*) ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int ) ;
 int PORTB_HOTPLUG_INT_EN ;
 int PORTB_HOTPLUG_INT_STATUS ;
 int PORTC_HOTPLUG_INT_EN ;
 int PORTC_HOTPLUG_INT_STATUS ;
 int PORTD_HOTPLUG_INT_EN ;
 int PORTD_HOTPLUG_INT_STATUS ;
 int PORT_HOTPLUG_EN ;
 int SDVOB_HOTPLUG_INT_EN ;
 int SDVOB_HOTPLUG_INT_STATUS_I915 ;
 int SDVOC_HOTPLUG_INT_EN ;
 int SDVOC_HOTPLUG_INT_STATUS_I915 ;

__attribute__((used)) static void i915_hpd_irq_setup(struct drm_device *dev)
{
 drm_i915_private_t *dev_priv = (drm_i915_private_t *) dev->dev_private;
 u32 hotplug_en;

 if (I915_HAS_HOTPLUG(dev)) {
  hotplug_en = I915_READ(PORT_HOTPLUG_EN);

  if (dev_priv->hotplug_supported_mask & PORTB_HOTPLUG_INT_STATUS)
   hotplug_en |= PORTB_HOTPLUG_INT_EN;
  if (dev_priv->hotplug_supported_mask & PORTC_HOTPLUG_INT_STATUS)
   hotplug_en |= PORTC_HOTPLUG_INT_EN;
  if (dev_priv->hotplug_supported_mask & PORTD_HOTPLUG_INT_STATUS)
   hotplug_en |= PORTD_HOTPLUG_INT_EN;
  if (dev_priv->hotplug_supported_mask & SDVOC_HOTPLUG_INT_STATUS_I915)
   hotplug_en |= SDVOC_HOTPLUG_INT_EN;
  if (dev_priv->hotplug_supported_mask & SDVOB_HOTPLUG_INT_STATUS_I915)
   hotplug_en |= SDVOB_HOTPLUG_INT_EN;
  if (dev_priv->hotplug_supported_mask & CRT_HOTPLUG_INT_STATUS) {
   hotplug_en |= CRT_HOTPLUG_INT_EN;
   hotplug_en |= CRT_HOTPLUG_VOLTAGE_COMPARE_50;
  }



  I915_WRITE(PORT_HOTPLUG_EN, hotplug_en);
 }
}
