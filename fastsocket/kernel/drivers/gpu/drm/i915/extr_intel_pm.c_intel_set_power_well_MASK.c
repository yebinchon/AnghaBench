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
typedef  int uint32_t ;
struct drm_i915_private {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  HSW_PWR_WELL_DRIVER ; 
 int HSW_PWR_WELL_ENABLE ; 
 int HSW_PWR_WELL_STATE ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*) ; 
 int /*<<< orphan*/  i915_disable_power_well ; 
 scalar_t__ FUNC5 (int,int) ; 

void FUNC6(struct drm_device *dev, bool enable)
{
	struct drm_i915_private *dev_priv = dev->dev_private;
	bool is_enabled, enable_requested;
	uint32_t tmp;

	if (!FUNC4(dev))
		return;

	if (!i915_disable_power_well && !enable)
		return;

	tmp = FUNC2(HSW_PWR_WELL_DRIVER);
	is_enabled = tmp & HSW_PWR_WELL_STATE;
	enable_requested = tmp & HSW_PWR_WELL_ENABLE;

	if (enable) {
		if (!enable_requested)
			FUNC3(HSW_PWR_WELL_DRIVER, HSW_PWR_WELL_ENABLE);

		if (!is_enabled) {
			FUNC0("Enabling power well\n");
			if (FUNC5((FUNC2(HSW_PWR_WELL_DRIVER) &
				      HSW_PWR_WELL_STATE), 20))
				FUNC1("Timeout enabling power well\n");
		}
	} else {
		if (enable_requested) {
			FUNC3(HSW_PWR_WELL_DRIVER, 0);
			FUNC0("Requesting to disable the power well\n");
		}
	}
}