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
struct tv_mode {scalar_t__ refresh; } ;
struct intel_tv {int dummy; } ;
struct drm_display_mode {int dummy; } ;
struct drm_connector {int dummy; } ;
typedef  enum drm_mode_status { ____Placeholder_drm_mode_status } drm_mode_status ;

/* Variables and functions */
 int MODE_CLOCK_RANGE ; 
 int MODE_OK ; 
 int FUNC0 (scalar_t__) ; 
 int FUNC1 (struct drm_display_mode*) ; 
 struct intel_tv* FUNC2 (struct drm_connector*) ; 
 struct tv_mode* FUNC3 (struct intel_tv*) ; 

__attribute__((used)) static enum drm_mode_status
FUNC4(struct drm_connector *connector,
		    struct drm_display_mode *mode)
{
	struct intel_tv *intel_tv = FUNC2(connector);
	const struct tv_mode *tv_mode = FUNC3(intel_tv);

	/* Ensure TV refresh is close to desired refresh */
	if (tv_mode && FUNC0(tv_mode->refresh - FUNC1(mode) * 1000)
				< 1000)
		return MODE_OK;

	return MODE_CLOCK_RANGE;
}