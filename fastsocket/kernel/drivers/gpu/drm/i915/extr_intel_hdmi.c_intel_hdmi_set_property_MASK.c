#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
struct intel_hdmi {int force_audio; int has_audio; int color_range_auto; int /*<<< orphan*/  color_range; scalar_t__ has_hdmi_sink; } ;
struct TYPE_5__ {scalar_t__ crtc; } ;
struct TYPE_6__ {TYPE_2__ base; } ;
struct intel_digital_port {TYPE_3__ base; } ;
struct drm_property {int dummy; } ;
struct drm_i915_private {struct drm_property* broadcast_rgb_property; struct drm_property* force_audio_property; } ;
struct drm_connector {int /*<<< orphan*/  base; TYPE_1__* dev; } ;
typedef  enum hdmi_force_audio { ____Placeholder_hdmi_force_audio } hdmi_force_audio ;
struct TYPE_4__ {struct drm_i915_private* dev_private; } ;

/* Variables and functions */
 int EINVAL ; 
 int HDMI_AUDIO_AUTO ; 
 int HDMI_AUDIO_OFF_DVI ; 
 int HDMI_AUDIO_ON ; 
#define  INTEL_BROADCAST_RGB_AUTO 130 
#define  INTEL_BROADCAST_RGB_FULL 129 
#define  INTEL_BROADCAST_RGB_LIMITED 128 
 int /*<<< orphan*/  SDVO_COLOR_RANGE_16_235 ; 
 int FUNC0 (int /*<<< orphan*/ *,struct drm_property*,int) ; 
 struct intel_digital_port* FUNC1 (struct intel_hdmi*) ; 
 struct intel_hdmi* FUNC2 (struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int FUNC4 (struct drm_connector*) ; 

__attribute__((used)) static int
FUNC5(struct drm_connector *connector,
			struct drm_property *property,
			uint64_t val)
{
	struct intel_hdmi *intel_hdmi = FUNC2(connector);
	struct intel_digital_port *intel_dig_port =
		FUNC1(intel_hdmi);
	struct drm_i915_private *dev_priv = connector->dev->dev_private;
	int ret;

	ret = FUNC0(&connector->base, property, val);
	if (ret)
		return ret;

	if (property == dev_priv->force_audio_property) {
		enum hdmi_force_audio i = val;
		bool has_audio;

		if (i == intel_hdmi->force_audio)
			return 0;

		intel_hdmi->force_audio = i;

		if (i == HDMI_AUDIO_AUTO)
			has_audio = FUNC4(connector);
		else
			has_audio = (i == HDMI_AUDIO_ON);

		if (i == HDMI_AUDIO_OFF_DVI)
			intel_hdmi->has_hdmi_sink = 0;

		intel_hdmi->has_audio = has_audio;
		goto done;
	}

	if (property == dev_priv->broadcast_rgb_property) {
		switch (val) {
		case INTEL_BROADCAST_RGB_AUTO:
			intel_hdmi->color_range_auto = true;
			break;
		case INTEL_BROADCAST_RGB_FULL:
			intel_hdmi->color_range_auto = false;
			intel_hdmi->color_range = 0;
			break;
		case INTEL_BROADCAST_RGB_LIMITED:
			intel_hdmi->color_range_auto = false;
			intel_hdmi->color_range = SDVO_COLOR_RANGE_16_235;
			break;
		default:
			return -EINVAL;
		}
		goto done;
	}

	return -EINVAL;

done:
	if (intel_dig_port->base.base.crtc)
		FUNC3(intel_dig_port->base.base.crtc);

	return 0;
}