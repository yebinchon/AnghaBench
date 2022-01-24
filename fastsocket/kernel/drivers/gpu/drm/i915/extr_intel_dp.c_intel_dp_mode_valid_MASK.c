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
struct intel_dp {int dummy; } ;
struct TYPE_2__ {struct drm_display_mode* fixed_mode; } ;
struct intel_connector {TYPE_1__ panel; } ;
struct drm_display_mode {scalar_t__ hdisplay; scalar_t__ vdisplay; int clock; int flags; } ;
struct drm_connector {int dummy; } ;

/* Variables and functions */
 int DRM_MODE_FLAG_DBLCLK ; 
 int MODE_CLOCK_HIGH ; 
 int MODE_CLOCK_LOW ; 
 int MODE_H_ILLEGAL ; 
 int MODE_OK ; 
 int MODE_PANEL ; 
 struct intel_dp* FUNC0 (struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC1 (struct intel_dp*,struct drm_display_mode*,int) ; 
 scalar_t__ FUNC2 (struct intel_dp*) ; 
 struct intel_connector* FUNC3 (struct drm_connector*) ; 

__attribute__((used)) static int
FUNC4(struct drm_connector *connector,
		    struct drm_display_mode *mode)
{
	struct intel_dp *intel_dp = FUNC0(connector);
	struct intel_connector *intel_connector = FUNC3(connector);
	struct drm_display_mode *fixed_mode = intel_connector->panel.fixed_mode;

	if (FUNC2(intel_dp) && fixed_mode) {
		if (mode->hdisplay > fixed_mode->hdisplay)
			return MODE_PANEL;

		if (mode->vdisplay > fixed_mode->vdisplay)
			return MODE_PANEL;
	}

	if (!FUNC1(intel_dp, mode, false))
		return MODE_CLOCK_HIGH;

	if (mode->clock < 10000)
		return MODE_CLOCK_LOW;

	if (mode->flags & DRM_MODE_FLAG_DBLCLK)
		return MODE_H_ILLEGAL;

	return MODE_OK;
}