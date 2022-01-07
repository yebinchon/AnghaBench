
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_hdmi {int ddc_bus; } ;
struct edid {int input; } ;
struct drm_i915_private {int dummy; } ;
struct drm_connector {TYPE_1__* dev; } ;
struct TYPE_2__ {struct drm_i915_private* dev_private; } ;


 int DRM_EDID_INPUT_DIGITAL ;
 int drm_detect_monitor_audio (struct edid*) ;
 struct edid* drm_get_edid (struct drm_connector*,int ) ;
 struct intel_hdmi* intel_attached_hdmi (struct drm_connector*) ;
 int intel_gmbus_get_adapter (struct drm_i915_private*,int ) ;
 int kfree (struct edid*) ;

__attribute__((used)) static bool
intel_hdmi_detect_audio(struct drm_connector *connector)
{
 struct intel_hdmi *intel_hdmi = intel_attached_hdmi(connector);
 struct drm_i915_private *dev_priv = connector->dev->dev_private;
 struct edid *edid;
 bool has_audio = 0;

 edid = drm_get_edid(connector,
       intel_gmbus_get_adapter(dev_priv,
          intel_hdmi->ddc_bus));
 if (edid) {
  if (edid->input & DRM_EDID_INPUT_DIGITAL)
   has_audio = drm_detect_monitor_audio(edid);
  kfree(edid);
 }

 return has_audio;
}
