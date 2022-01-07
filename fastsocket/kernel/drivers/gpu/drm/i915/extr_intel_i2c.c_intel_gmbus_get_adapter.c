
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2c_adapter {int dummy; } ;
struct drm_i915_private {TYPE_1__* gmbus; } ;
struct TYPE_2__ {struct i2c_adapter adapter; } ;


 int WARN_ON (int) ;
 scalar_t__ intel_gmbus_is_port_valid (unsigned int) ;

struct i2c_adapter *intel_gmbus_get_adapter(struct drm_i915_private *dev_priv,
         unsigned port)
{
 WARN_ON(!intel_gmbus_is_port_valid(port));

 return (intel_gmbus_is_port_valid(port)) ?
  &dev_priv->gmbus[port - 1].adapter : ((void*)0);
}
