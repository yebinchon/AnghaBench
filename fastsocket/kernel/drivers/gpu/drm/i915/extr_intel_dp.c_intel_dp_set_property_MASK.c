#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
struct TYPE_8__ {scalar_t__ crtc; } ;
struct intel_encoder {TYPE_4__ base; } ;
struct intel_dp {int force_audio; int has_audio; int color_range_auto; int /*<<< orphan*/  color_range; } ;
struct TYPE_7__ {int fitting_mode; } ;
struct intel_connector {TYPE_3__ panel; } ;
struct drm_property {int dummy; } ;
struct drm_i915_private {struct drm_property* broadcast_rgb_property; struct drm_property* force_audio_property; } ;
struct drm_connector {TYPE_2__* dev; int /*<<< orphan*/  base; } ;
struct TYPE_5__ {struct drm_property* scaling_mode_property; } ;
struct TYPE_6__ {TYPE_1__ mode_config; struct drm_i915_private* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  DP_COLOR_RANGE_16_235 ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int DRM_MODE_SCALE_NONE ; 
 int EINVAL ; 
 int HDMI_AUDIO_AUTO ; 
 int HDMI_AUDIO_ON ; 
#define  INTEL_BROADCAST_RGB_AUTO 130 
#define  INTEL_BROADCAST_RGB_FULL 129 
#define  INTEL_BROADCAST_RGB_LIMITED 128 
 int FUNC1 (int /*<<< orphan*/ *,struct drm_property*,int) ; 
 struct intel_dp* FUNC2 (TYPE_4__*) ; 
 struct intel_encoder* FUNC3 (struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int FUNC5 (struct drm_connector*) ; 
 scalar_t__ FUNC6 (struct intel_dp*) ; 
 struct intel_connector* FUNC7 (struct drm_connector*) ; 

__attribute__((used)) static int
FUNC8(struct drm_connector *connector,
		      struct drm_property *property,
		      uint64_t val)
{
	struct drm_i915_private *dev_priv = connector->dev->dev_private;
	struct intel_connector *intel_connector = FUNC7(connector);
	struct intel_encoder *intel_encoder = FUNC3(connector);
	struct intel_dp *intel_dp = FUNC2(&intel_encoder->base);
	int ret;

	ret = FUNC1(&connector->base, property, val);
	if (ret)
		return ret;

	if (property == dev_priv->force_audio_property) {
		int i = val;
		bool has_audio;

		if (i == intel_dp->force_audio)
			return 0;

		intel_dp->force_audio = i;

		if (i == HDMI_AUDIO_AUTO)
			has_audio = FUNC5(connector);
		else
			has_audio = (i == HDMI_AUDIO_ON);

		if (has_audio == intel_dp->has_audio)
			return 0;

		intel_dp->has_audio = has_audio;
		goto done;
	}

	if (property == dev_priv->broadcast_rgb_property) {
		switch (val) {
		case INTEL_BROADCAST_RGB_AUTO:
			intel_dp->color_range_auto = true;
			break;
		case INTEL_BROADCAST_RGB_FULL:
			intel_dp->color_range_auto = false;
			intel_dp->color_range = 0;
			break;
		case INTEL_BROADCAST_RGB_LIMITED:
			intel_dp->color_range_auto = false;
			intel_dp->color_range = DP_COLOR_RANGE_16_235;
			break;
		default:
			return -EINVAL;
		}
		goto done;
	}

	if (FUNC6(intel_dp) &&
	    property == connector->dev->mode_config.scaling_mode_property) {
		if (val == DRM_MODE_SCALE_NONE) {
			FUNC0("no scaling not supported\n");
			return -EINVAL;
		}

		if (intel_connector->panel.fitting_mode == val) {
			/* the eDP scaling property is not changed */
			return 0;
		}
		intel_connector->panel.fitting_mode = val;

		goto done;
	}

	return -EINVAL;

done:
	if (intel_encoder->base.crtc)
		FUNC4(intel_encoder->base.crtc);

	return 0;
}