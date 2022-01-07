
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_8__ {scalar_t__ crtc; } ;
struct intel_encoder {TYPE_4__ base; } ;
struct intel_dp {int force_audio; int has_audio; int color_range_auto; int color_range; } ;
struct TYPE_7__ {int fitting_mode; } ;
struct intel_connector {TYPE_3__ panel; } ;
struct drm_property {int dummy; } ;
struct drm_i915_private {struct drm_property* broadcast_rgb_property; struct drm_property* force_audio_property; } ;
struct drm_connector {TYPE_2__* dev; int base; } ;
struct TYPE_5__ {struct drm_property* scaling_mode_property; } ;
struct TYPE_6__ {TYPE_1__ mode_config; struct drm_i915_private* dev_private; } ;


 int DP_COLOR_RANGE_16_235 ;
 int DRM_DEBUG_KMS (char*) ;
 int DRM_MODE_SCALE_NONE ;
 int EINVAL ;
 int HDMI_AUDIO_AUTO ;
 int HDMI_AUDIO_ON ;



 int drm_object_property_set_value (int *,struct drm_property*,int) ;
 struct intel_dp* enc_to_intel_dp (TYPE_4__*) ;
 struct intel_encoder* intel_attached_encoder (struct drm_connector*) ;
 int intel_crtc_restore_mode (scalar_t__) ;
 int intel_dp_detect_audio (struct drm_connector*) ;
 scalar_t__ is_edp (struct intel_dp*) ;
 struct intel_connector* to_intel_connector (struct drm_connector*) ;

__attribute__((used)) static int
intel_dp_set_property(struct drm_connector *connector,
        struct drm_property *property,
        uint64_t val)
{
 struct drm_i915_private *dev_priv = connector->dev->dev_private;
 struct intel_connector *intel_connector = to_intel_connector(connector);
 struct intel_encoder *intel_encoder = intel_attached_encoder(connector);
 struct intel_dp *intel_dp = enc_to_intel_dp(&intel_encoder->base);
 int ret;

 ret = drm_object_property_set_value(&connector->base, property, val);
 if (ret)
  return ret;

 if (property == dev_priv->force_audio_property) {
  int i = val;
  bool has_audio;

  if (i == intel_dp->force_audio)
   return 0;

  intel_dp->force_audio = i;

  if (i == HDMI_AUDIO_AUTO)
   has_audio = intel_dp_detect_audio(connector);
  else
   has_audio = (i == HDMI_AUDIO_ON);

  if (has_audio == intel_dp->has_audio)
   return 0;

  intel_dp->has_audio = has_audio;
  goto done;
 }

 if (property == dev_priv->broadcast_rgb_property) {
  switch (val) {
  case 130:
   intel_dp->color_range_auto = 1;
   break;
  case 129:
   intel_dp->color_range_auto = 0;
   intel_dp->color_range = 0;
   break;
  case 128:
   intel_dp->color_range_auto = 0;
   intel_dp->color_range = DP_COLOR_RANGE_16_235;
   break;
  default:
   return -EINVAL;
  }
  goto done;
 }

 if (is_edp(intel_dp) &&
     property == connector->dev->mode_config.scaling_mode_property) {
  if (val == DRM_MODE_SCALE_NONE) {
   DRM_DEBUG_KMS("no scaling not supported\n");
   return -EINVAL;
  }

  if (intel_connector->panel.fitting_mode == val) {

   return 0;
  }
  intel_connector->panel.fitting_mode = val;

  goto done;
 }

 return -EINVAL;

done:
 if (intel_encoder->base.crtc)
  intel_crtc_restore_mode(intel_encoder->base.crtc);

 return 0;
}
