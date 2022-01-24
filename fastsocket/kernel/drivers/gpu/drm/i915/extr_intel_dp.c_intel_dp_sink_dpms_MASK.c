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
struct intel_dp {int* dpcd; } ;

/* Variables and functions */
 size_t DP_DPCD_REV ; 
 int /*<<< orphan*/  DP_SET_POWER ; 
 int /*<<< orphan*/  DP_SET_POWER_D0 ; 
 int /*<<< orphan*/  DP_SET_POWER_D3 ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int DRM_MODE_DPMS_ON ; 
 int FUNC1 (struct intel_dp*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

void FUNC3(struct intel_dp *intel_dp, int mode)
{
	int ret, i;

	/* Should have a valid DPCD by this point */
	if (intel_dp->dpcd[DP_DPCD_REV] < 0x11)
		return;

	if (mode != DRM_MODE_DPMS_ON) {
		ret = FUNC1(intel_dp, DP_SET_POWER,
						  DP_SET_POWER_D3);
		if (ret != 1)
			FUNC0("failed to write sink power state\n");
	} else {
		/*
		 * When turning on, we need to retry for 1ms to give the sink
		 * time to wake up.
		 */
		for (i = 0; i < 3; i++) {
			ret = FUNC1(intel_dp,
							  DP_SET_POWER,
							  DP_SET_POWER_D0);
			if (ret == 1)
				break;
			FUNC2(1);
		}
	}
}