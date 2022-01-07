
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_hdmi {int ddc_bus; } ;
struct drm_i915_private {int dummy; } ;
struct drm_connector {TYPE_1__* dev; } ;
struct TYPE_2__ {struct drm_i915_private* dev_private; } ;


 struct intel_hdmi* intel_attached_hdmi (struct drm_connector*) ;
 int intel_ddc_get_modes (struct drm_connector*,int ) ;
 int intel_gmbus_get_adapter (struct drm_i915_private*,int ) ;

__attribute__((used)) static int intel_hdmi_get_modes(struct drm_connector *connector)
{
 struct intel_hdmi *intel_hdmi = intel_attached_hdmi(connector);
 struct drm_i915_private *dev_priv = connector->dev->dev_private;





 return intel_ddc_get_modes(connector,
       intel_gmbus_get_adapter(dev_priv,
          intel_hdmi->ddc_bus));
}
