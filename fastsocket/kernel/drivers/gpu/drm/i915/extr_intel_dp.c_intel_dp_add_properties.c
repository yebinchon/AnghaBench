
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct intel_dp {int color_range_auto; } ;
struct TYPE_5__ {int fitting_mode; } ;
struct intel_connector {TYPE_2__ panel; } ;
struct drm_connector {TYPE_3__* dev; int base; } ;
struct TYPE_4__ {int scaling_mode_property; } ;
struct TYPE_6__ {TYPE_1__ mode_config; } ;


 int DRM_MODE_SCALE_ASPECT ;
 int drm_mode_create_scaling_mode_property (TYPE_3__*) ;
 int drm_object_attach_property (int *,int ,int ) ;
 int intel_attach_broadcast_rgb_property (struct drm_connector*) ;
 int intel_attach_force_audio_property (struct drm_connector*) ;
 scalar_t__ is_edp (struct intel_dp*) ;
 struct intel_connector* to_intel_connector (struct drm_connector*) ;

__attribute__((used)) static void
intel_dp_add_properties(struct intel_dp *intel_dp, struct drm_connector *connector)
{
 struct intel_connector *intel_connector = to_intel_connector(connector);

 intel_attach_force_audio_property(connector);
 intel_attach_broadcast_rgb_property(connector);
 intel_dp->color_range_auto = 1;

 if (is_edp(intel_dp)) {
  drm_mode_create_scaling_mode_property(connector->dev);
  drm_object_attach_property(
   &connector->base,
   connector->dev->mode_config.scaling_mode_property,
   DRM_MODE_SCALE_ASPECT);
  intel_connector->panel.fitting_mode = DRM_MODE_SCALE_ASPECT;
 }
}
