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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct intel_dp {int /*<<< orphan*/  lane_count; int /*<<< orphan*/  dpcd; int /*<<< orphan*/  DP; } ;

/* Variables and functions */
 int DP_LINK_SCRAMBLING_DISABLE ; 
 int DP_LINK_STATUS_SIZE ; 
 int DP_TRAINING_PATTERN_2 ; 
 int DP_TRAINING_PATTERN_DISABLE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct intel_dp*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC7 (struct intel_dp*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct intel_dp*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC10 (struct intel_dp*,int /*<<< orphan*/ *) ; 

void
FUNC11(struct intel_dp *intel_dp)
{
	bool channel_eq = false;
	int tries, cr_tries;
	uint32_t DP = intel_dp->DP;

	/* channel equalization */
	tries = 0;
	cr_tries = 0;
	channel_eq = false;
	for (;;) {
		uint8_t	    link_status[DP_LINK_STATUS_SIZE];

		if (cr_tries > 5) {
			FUNC1("failed to train DP, aborting\n");
			FUNC6(intel_dp);
			break;
		}

		FUNC8(intel_dp, &DP);

		/* channel eq pattern */
		if (!FUNC7(intel_dp, DP,
					     DP_TRAINING_PATTERN_2 |
					     DP_LINK_SCRAMBLING_DISABLE))
			break;

		FUNC4(intel_dp->dpcd);
		if (!FUNC5(intel_dp, link_status))
			break;

		/* Make sure clock is still ok */
		if (!FUNC3(link_status, intel_dp->lane_count)) {
			FUNC9(intel_dp);
			cr_tries++;
			continue;
		}

		if (FUNC2(link_status, intel_dp->lane_count)) {
			channel_eq = true;
			break;
		}

		/* Try 5 times, then try clock recovery if that fails */
		if (tries > 5) {
			FUNC6(intel_dp);
			FUNC9(intel_dp);
			tries = 0;
			cr_tries++;
			continue;
		}

		/* Compute new intel_dp->train_set as requested by target */
		FUNC10(intel_dp, link_status);
		++tries;
	}

	if (channel_eq)
		FUNC0("Channel EQ done. DP Training successfull\n");

	FUNC7(intel_dp, DP, DP_TRAINING_PATTERN_DISABLE);
}