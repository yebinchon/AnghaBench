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
struct intel_dp {int /*<<< orphan*/  dpcd; } ;
struct drm_display_mode {int /*<<< orphan*/  private_flags; int /*<<< orphan*/  clock; } ;

/* Variables and functions */
 int /*<<< orphan*/  INTEL_MODE_DP_FORCE_6BPC ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_dp*) ; 

__attribute__((used)) static bool
FUNC5(struct intel_dp *intel_dp,
			  struct drm_display_mode *mode,
			  bool adjust_mode)
{
	int max_link_clock =
		FUNC0(FUNC4(intel_dp));
	int max_lanes = FUNC1(intel_dp->dpcd);
	int max_rate, mode_rate;

	mode_rate = FUNC2(mode->clock, 24);
	max_rate = FUNC3(max_link_clock, max_lanes);

	if (mode_rate > max_rate) {
		mode_rate = FUNC2(mode->clock, 18);
		if (mode_rate > max_rate)
			return false;

		if (adjust_mode)
			mode->private_flags
				|= INTEL_MODE_DP_FORCE_6BPC;

		return true;
	}

	return true;
}