#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct drm_device {int dummy; } ;
struct drm_crtc {struct drm_device* dev; } ;
typedef  int /*<<< orphan*/  intel_limit_t ;

/* Variables and functions */
 int /*<<< orphan*/  INTEL_OUTPUT_ANALOG ; 
 int /*<<< orphan*/  INTEL_OUTPUT_DISPLAYPORT ; 
 int /*<<< orphan*/  INTEL_OUTPUT_HDMI ; 
 int /*<<< orphan*/  INTEL_OUTPUT_LVDS ; 
 int /*<<< orphan*/  INTEL_OUTPUT_SDVO ; 
 scalar_t__ FUNC0 (struct drm_device*) ; 
 int /*<<< orphan*/  intel_limits_g4x_display_port ; 
 int /*<<< orphan*/  intel_limits_g4x_dual_channel_lvds ; 
 int /*<<< orphan*/  intel_limits_g4x_hdmi ; 
 int /*<<< orphan*/  intel_limits_g4x_sdvo ; 
 int /*<<< orphan*/  intel_limits_g4x_single_channel_lvds ; 
 int /*<<< orphan*/  intel_limits_i9xx_sdvo ; 
 scalar_t__ FUNC1 (struct drm_crtc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static const intel_limit_t *FUNC2(struct drm_crtc *crtc)
{
	struct drm_device *dev = crtc->dev;
	const intel_limit_t *limit;

	if (FUNC1(crtc, INTEL_OUTPUT_LVDS)) {
		if (FUNC0(dev))
			/* LVDS with dual channel */
			limit = &intel_limits_g4x_dual_channel_lvds;
		else
			/* LVDS with dual channel */
			limit = &intel_limits_g4x_single_channel_lvds;
	} else if (FUNC1(crtc, INTEL_OUTPUT_HDMI) ||
		   FUNC1(crtc, INTEL_OUTPUT_ANALOG)) {
		limit = &intel_limits_g4x_hdmi;
	} else if (FUNC1(crtc, INTEL_OUTPUT_SDVO)) {
		limit = &intel_limits_g4x_sdvo;
	} else if (FUNC1(crtc, INTEL_OUTPUT_DISPLAYPORT)) {
		limit = &intel_limits_g4x_display_port;
	} else /* The option is for other outputs */
		limit = &intel_limits_i9xx_sdvo;

	return limit;
}