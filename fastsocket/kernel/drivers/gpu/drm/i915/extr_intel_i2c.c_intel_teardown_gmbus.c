
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_gmbus {int adapter; } ;
struct drm_i915_private {struct intel_gmbus* gmbus; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;


 int GMBUS_NUM_PORTS ;
 int i2c_del_adapter (int *) ;

void intel_teardown_gmbus(struct drm_device *dev)
{
 struct drm_i915_private *dev_priv = dev->dev_private;
 int i;

 for (i = 0; i < GMBUS_NUM_PORTS; i++) {
  struct intel_gmbus *bus = &dev_priv->gmbus[i];
  i2c_del_adapter(&bus->adapter);
 }
}
