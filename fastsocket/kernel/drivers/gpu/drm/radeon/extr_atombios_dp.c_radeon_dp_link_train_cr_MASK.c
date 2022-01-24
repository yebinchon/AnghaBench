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
typedef  int u8 ;
struct radeon_dp_link_train_info {int* train_set; int tries; int dp_lane_count; int /*<<< orphan*/  link_status; int /*<<< orphan*/  radeon_connector; int /*<<< orphan*/  dpcd; } ;

/* Variables and functions */
 int /*<<< orphan*/  DP_TRAINING_PATTERN_1 ; 
 int DP_TRAIN_MAX_SWING_REACHED ; 
 int DP_TRAIN_PRE_EMPHASIS_MASK ; 
 int DP_TRAIN_PRE_EMPHASIS_SHIFT ; 
 int DP_TRAIN_VOLTAGE_SWING_MASK ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct radeon_dp_link_train_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct radeon_dp_link_train_info*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

__attribute__((used)) static int FUNC10(struct radeon_dp_link_train_info *dp_info)
{
	bool clock_recovery;
 	u8 voltage;
	int i;

	FUNC7(dp_info, DP_TRAINING_PATTERN_1);
	FUNC5(dp_info->train_set, 0, 4);
	FUNC8(dp_info);

	FUNC9(400);

	/* clock recovery loop */
	clock_recovery = false;
	dp_info->tries = 0;
	voltage = 0xff;
	while (1) {
		FUNC4(dp_info->dpcd);

		if (!FUNC6(dp_info->radeon_connector, dp_info->link_status)) {
			FUNC1("displayport link status failed\n");
			break;
		}

		if (FUNC3(dp_info->link_status, dp_info->dp_lane_count)) {
			clock_recovery = true;
			break;
		}

		for (i = 0; i < dp_info->dp_lane_count; i++) {
			if ((dp_info->train_set[i] & DP_TRAIN_MAX_SWING_REACHED) == 0)
				break;
		}
		if (i == dp_info->dp_lane_count) {
			FUNC1("clock recovery reached max voltage\n");
			break;
		}

		if ((dp_info->train_set[0] & DP_TRAIN_VOLTAGE_SWING_MASK) == voltage) {
			++dp_info->tries;
			if (dp_info->tries == 5) {
				FUNC1("clock recovery tried 5 times\n");
				break;
			}
		} else
			dp_info->tries = 0;

		voltage = dp_info->train_set[0] & DP_TRAIN_VOLTAGE_SWING_MASK;

		/* Compute new train_set as requested by sink */
		FUNC2(dp_info->link_status, dp_info->dp_lane_count, dp_info->train_set);

		FUNC8(dp_info);
	}
	if (!clock_recovery) {
		FUNC1("clock recovery failed\n");
		return -1;
	} else {
		FUNC0("clock recovery at voltage %d pre-emphasis %d\n",
			  dp_info->train_set[0] & DP_TRAIN_VOLTAGE_SWING_MASK,
			  (dp_info->train_set[0] & DP_TRAIN_PRE_EMPHASIS_MASK) >>
			  DP_TRAIN_PRE_EMPHASIS_SHIFT);
		return 0;
	}
}