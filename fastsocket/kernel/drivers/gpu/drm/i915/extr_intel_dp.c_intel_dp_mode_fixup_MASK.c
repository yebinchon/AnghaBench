#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct intel_dp {int link_bw; int lane_count; scalar_t__ color_range; scalar_t__ color_range_auto; int /*<<< orphan*/  dpcd; struct intel_connector* attached_connector; } ;
struct TYPE_2__ {int /*<<< orphan*/  fitting_mode; scalar_t__ fixed_mode; } ;
struct intel_connector {TYPE_1__ panel; } ;
struct drm_encoder {struct drm_device* dev; } ;
struct drm_display_mode {int flags; int clock; int private_flags; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ DP_COLOR_RANGE_16_235 ; 
#define  DP_LINK_BW_1_62 129 
#define  DP_LINK_BW_2_7 128 
 int /*<<< orphan*/  FUNC0 (char*,int,int,...) ; 
 int DRM_MODE_FLAG_DBLCLK ; 
 int INTEL_MODE_DP_FORCE_6BPC ; 
 int INTEL_MODE_LIMITED_COLOR_RANGE ; 
 int FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct drm_display_mode*) ; 
 struct intel_dp* FUNC4 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC5 (struct intel_dp*,struct drm_display_mode*,int) ; 
 int FUNC6 (int,int) ; 
 int FUNC7 (int,int) ; 
 scalar_t__ FUNC8 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,struct drm_display_mode*) ; 
 int /*<<< orphan*/  FUNC10 (struct drm_device*,int /*<<< orphan*/ ,struct drm_display_mode const*,struct drm_display_mode*) ; 
 scalar_t__ FUNC11 (struct intel_dp*) ; 

bool
FUNC12(struct drm_encoder *encoder,
		    const struct drm_display_mode *mode,
		    struct drm_display_mode *adjusted_mode)
{
	struct drm_device *dev = encoder->dev;
	struct intel_dp *intel_dp = FUNC4(encoder);
	struct intel_connector *intel_connector = intel_dp->attached_connector;
	int lane_count, clock;
	int max_lane_count = FUNC2(intel_dp->dpcd);
	int max_clock = FUNC8(intel_dp) == DP_LINK_BW_2_7 ? 1 : 0;
	int bpp, mode_rate;
	static int bws[2] = { DP_LINK_BW_1_62, DP_LINK_BW_2_7 };

	if (FUNC11(intel_dp) && intel_connector->panel.fixed_mode) {
		FUNC9(intel_connector->panel.fixed_mode,
				       adjusted_mode);
		FUNC10(dev,
					intel_connector->panel.fitting_mode,
					mode, adjusted_mode);
	}

	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLCLK)
		return false;

	FUNC0("DP link computation with max lane count %i "
		      "max bw %02x pixel clock %iKHz\n",
		      max_lane_count, bws[max_clock], adjusted_mode->clock);

	if (!FUNC5(intel_dp, adjusted_mode, true))
		return false;

	bpp = adjusted_mode->private_flags & INTEL_MODE_DP_FORCE_6BPC ? 18 : 24;

	if (intel_dp->color_range_auto) {
		/*
		 * See:
		 * CEA-861-E - 5.1 Default Encoding Parameters
		 * VESA DisplayPort Ver.1.2a - 5.1.1.1 Video Colorimetry
		 */
		if (bpp != 18 && FUNC3(adjusted_mode) > 1)
			intel_dp->color_range = DP_COLOR_RANGE_16_235;
		else
			intel_dp->color_range = 0;
	}

	if (intel_dp->color_range)
		adjusted_mode->private_flags |= INTEL_MODE_LIMITED_COLOR_RANGE;

	mode_rate = FUNC6(adjusted_mode->clock, bpp);

	for (clock = 0; clock <= max_clock; clock++) {
		for (lane_count = 1; lane_count <= max_lane_count; lane_count <<= 1) {
			int link_bw_clock =
				FUNC1(bws[clock]);
			int link_avail = FUNC7(link_bw_clock,
								lane_count);

			if (mode_rate <= link_avail) {
				intel_dp->link_bw = bws[clock];
				intel_dp->lane_count = lane_count;
				adjusted_mode->clock = link_bw_clock;
				FUNC0("DP link bw %02x lane "
						"count %d clock %d bpp %d\n",
				       intel_dp->link_bw, intel_dp->lane_count,
				       adjusted_mode->clock, bpp);
				FUNC0("DP link bw required %i available %i\n",
					      mode_rate, link_avail);
				return true;
			}
		}
	}

	return false;
}