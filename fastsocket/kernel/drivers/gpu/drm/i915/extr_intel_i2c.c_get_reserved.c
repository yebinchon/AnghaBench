
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_gmbus {int gpio_reg; struct drm_i915_private* dev_priv; } ;
struct drm_i915_private {struct drm_device* dev; } ;
struct drm_device {int dummy; } ;


 int GPIO_CLOCK_PULLUP_DISABLE ;
 int GPIO_DATA_PULLUP_DISABLE ;
 int I915_READ_NOTRACE (int ) ;
 int IS_845G (struct drm_device*) ;
 int IS_I830 (struct drm_device*) ;

__attribute__((used)) static u32 get_reserved(struct intel_gmbus *bus)
{
 struct drm_i915_private *dev_priv = bus->dev_priv;
 struct drm_device *dev = dev_priv->dev;
 u32 reserved = 0;


 if (!IS_I830(dev) && !IS_845G(dev))
  reserved = I915_READ_NOTRACE(bus->gpio_reg) &
          (GPIO_DATA_PULLUP_DISABLE |
           GPIO_CLOCK_PULLUP_DISABLE);

 return reserved;
}
