
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_adapter {int dummy; } ;
struct drm_i915_private {int crt_ddc_pin; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;
struct drm_connector {struct drm_device* dev; } ;


 int GMBUS_PORT_DPB ;
 int IS_G4X (struct drm_device*) ;
 int intel_crt_ddc_get_modes (struct drm_connector*,struct i2c_adapter*) ;
 struct i2c_adapter* intel_gmbus_get_adapter (struct drm_i915_private*,int ) ;

__attribute__((used)) static int intel_crt_get_modes(struct drm_connector *connector)
{
 struct drm_device *dev = connector->dev;
 struct drm_i915_private *dev_priv = dev->dev_private;
 int ret;
 struct i2c_adapter *i2c;

 i2c = intel_gmbus_get_adapter(dev_priv, dev_priv->crt_ddc_pin);
 ret = intel_crt_ddc_get_modes(connector, i2c);
 if (ret || !IS_G4X(dev))
  return ret;


 i2c = intel_gmbus_get_adapter(dev_priv, GMBUS_PORT_DPB);
 return intel_crt_ddc_get_modes(connector, i2c);
}
