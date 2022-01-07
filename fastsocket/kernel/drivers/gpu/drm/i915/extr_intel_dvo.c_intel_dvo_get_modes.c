
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_dvo {int * panel_fixed_mode; } ;
struct drm_i915_private {int dummy; } ;
struct drm_display_mode {int dummy; } ;
struct drm_connector {TYPE_1__* dev; int probed_modes; } ;
struct TYPE_2__ {struct drm_i915_private* dev_private; } ;


 int GMBUS_PORT_DPC ;
 struct drm_display_mode* drm_mode_duplicate (TYPE_1__*,int *) ;
 int drm_mode_probed_add (struct drm_connector*,struct drm_display_mode*) ;
 struct intel_dvo* intel_attached_dvo (struct drm_connector*) ;
 int intel_ddc_get_modes (struct drm_connector*,int ) ;
 int intel_gmbus_get_adapter (struct drm_i915_private*,int ) ;
 int list_empty (int *) ;

__attribute__((used)) static int intel_dvo_get_modes(struct drm_connector *connector)
{
 struct intel_dvo *intel_dvo = intel_attached_dvo(connector);
 struct drm_i915_private *dev_priv = connector->dev->dev_private;






 intel_ddc_get_modes(connector,
       intel_gmbus_get_adapter(dev_priv, GMBUS_PORT_DPC));
 if (!list_empty(&connector->probed_modes))
  return 1;

 if (intel_dvo->panel_fixed_mode != ((void*)0)) {
  struct drm_display_mode *mode;
  mode = drm_mode_duplicate(connector->dev, intel_dvo->panel_fixed_mode);
  if (mode) {
   drm_mode_probed_add(connector, mode);
   return 1;
  }
 }

 return 0;
}
