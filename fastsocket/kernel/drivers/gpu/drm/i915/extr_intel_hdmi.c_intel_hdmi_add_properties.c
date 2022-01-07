
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_hdmi {int color_range_auto; } ;
struct drm_connector {int dummy; } ;


 int intel_attach_broadcast_rgb_property (struct drm_connector*) ;
 int intel_attach_force_audio_property (struct drm_connector*) ;

__attribute__((used)) static void
intel_hdmi_add_properties(struct intel_hdmi *intel_hdmi, struct drm_connector *connector)
{
 intel_attach_force_audio_property(connector);
 intel_attach_broadcast_rgb_property(connector);
 intel_hdmi->color_range_auto = 1;
}
