
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct edid {int dummy; } ;
struct drm_i915_private {int crt_ddc_pin; } ;
struct drm_connector {TYPE_1__* dev; } ;
struct TYPE_2__ {struct drm_i915_private* dev_private; } ;


 struct edid* drm_get_edid (struct drm_connector*,int ) ;
 int intel_gmbus_get_adapter (struct drm_i915_private*,int ) ;

__attribute__((used)) static struct edid *
intel_sdvo_get_analog_edid(struct drm_connector *connector)
{
 struct drm_i915_private *dev_priv = connector->dev->dev_private;

 return drm_get_edid(connector,
       intel_gmbus_get_adapter(dev_priv,
          dev_priv->crt_ddc_pin));
}
