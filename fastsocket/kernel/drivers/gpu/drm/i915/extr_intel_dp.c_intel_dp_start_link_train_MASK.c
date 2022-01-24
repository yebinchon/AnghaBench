#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct intel_dp {int* train_set; int lane_count; int /*<<< orphan*/  DP; int /*<<< orphan*/  dpcd; int /*<<< orphan*/  link_configuration; } ;
struct drm_encoder {struct drm_device* dev; } ;
struct drm_device {int dummy; } ;
struct TYPE_3__ {struct drm_encoder base; } ;
struct TYPE_4__ {TYPE_1__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  DP_LINK_BW_SET ; 
 int /*<<< orphan*/  DP_LINK_CONFIGURATION_SIZE ; 
 int DP_LINK_SCRAMBLING_DISABLE ; 
 int DP_LINK_STATUS_SIZE ; 
 int /*<<< orphan*/  DP_PORT_EN ; 
 int DP_TRAINING_PATTERN_1 ; 
 int DP_TRAIN_MAX_SWING_REACHED ; 
 int DP_TRAIN_VOLTAGE_SWING_MASK ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (struct drm_device*) ; 
 TYPE_2__* FUNC3 (struct intel_dp*) ; 
 scalar_t__ FUNC4 (int*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC7 (struct intel_dp*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct intel_dp*,int*) ; 
 int /*<<< orphan*/  FUNC9 (struct intel_dp*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct intel_dp*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct intel_dp*,int*) ; 
 int /*<<< orphan*/  FUNC12 (int*,int /*<<< orphan*/ ,int) ; 

void
FUNC13(struct intel_dp *intel_dp)
{
	struct drm_encoder *encoder = &FUNC3(intel_dp)->base.base;
	struct drm_device *dev = encoder->dev;
	int i;
	uint8_t voltage;
	bool clock_recovery = false;
	int voltage_tries, loop_tries;
	uint32_t DP = intel_dp->DP;

	if (FUNC2(dev))
		FUNC6(encoder);

	/* Write the link configuration data */
	FUNC7(intel_dp, DP_LINK_BW_SET,
				  intel_dp->link_configuration,
				  DP_LINK_CONFIGURATION_SIZE);

	DP |= DP_PORT_EN;

	FUNC12(intel_dp->train_set, 0, 4);
	voltage = 0xff;
	voltage_tries = 0;
	loop_tries = 0;
	clock_recovery = false;
	for (;;) {
		/* Use intel_dp->train_set[0] to set the voltage and pre emphasis values */
		uint8_t	    link_status[DP_LINK_STATUS_SIZE];

		FUNC10(intel_dp, &DP);

		/* Set training pattern 1 */
		if (!FUNC9(intel_dp, DP,
					     DP_TRAINING_PATTERN_1 |
					     DP_LINK_SCRAMBLING_DISABLE))
			break;

		FUNC5(intel_dp->dpcd);
		if (!FUNC8(intel_dp, link_status)) {
			FUNC1("failed to get link status\n");
			break;
		}

		if (FUNC4(link_status, intel_dp->lane_count)) {
			FUNC0("clock recovery OK\n");
			clock_recovery = true;
			break;
		}

		/* Check to see if we've tried the max voltage */
		for (i = 0; i < intel_dp->lane_count; i++)
			if ((intel_dp->train_set[i] & DP_TRAIN_MAX_SWING_REACHED) == 0)
				break;
		if (i == intel_dp->lane_count) {
			++loop_tries;
			if (loop_tries == 5) {
				FUNC0("too many full retries, give up\n");
				break;
			}
			FUNC12(intel_dp->train_set, 0, 4);
			voltage_tries = 0;
			continue;
		}

		/* Check to see if we've tried the same voltage 5 times */
		if ((intel_dp->train_set[0] & DP_TRAIN_VOLTAGE_SWING_MASK) == voltage) {
			++voltage_tries;
			if (voltage_tries == 5) {
				FUNC0("too many voltage retries, give up\n");
				break;
			}
		} else
			voltage_tries = 0;
		voltage = intel_dp->train_set[0] & DP_TRAIN_VOLTAGE_SWING_MASK;

		/* Compute new intel_dp->train_set as requested by target */
		FUNC11(intel_dp, link_status);
	}

	intel_dp->DP = DP;
}