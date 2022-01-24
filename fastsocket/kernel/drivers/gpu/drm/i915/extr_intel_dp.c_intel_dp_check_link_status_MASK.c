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
typedef  int u8 ;
struct TYPE_3__ {int /*<<< orphan*/  crtc; } ;
struct intel_encoder {TYPE_1__ base; int /*<<< orphan*/  connectors_active; } ;
struct intel_dp {int* dpcd; int /*<<< orphan*/  lane_count; } ;
struct TYPE_4__ {struct intel_encoder base; } ;

/* Variables and functions */
 int DP_AUTOMATED_TEST_REQUEST ; 
 int DP_CP_IRQ ; 
 int /*<<< orphan*/  DP_DEVICE_SERVICE_IRQ_VECTOR ; 
 size_t DP_DPCD_REV ; 
 int DP_LINK_STATUS_SIZE ; 
 int DP_SINK_SPECIFIC_IRQ ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 
 TYPE_2__* FUNC3 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC4 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (struct intel_dp*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC8 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC9 (struct intel_dp*,int*) ; 
 scalar_t__ FUNC10 (struct intel_dp*,int*) ; 
 int /*<<< orphan*/  FUNC11 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC12 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC13 (struct intel_dp*) ; 

void
FUNC14(struct intel_dp *intel_dp)
{
	struct intel_encoder *intel_encoder = &FUNC3(intel_dp)->base;
	u8 sink_irq_vector;
	u8 link_status[DP_LINK_STATUS_SIZE];

	if (!intel_encoder->connectors_active)
		return;

	if (FUNC2(!intel_encoder->base.crtc))
		return;

	/* Try to read receiver status if the link appears to be up */
	if (!FUNC9(intel_dp, link_status)) {
		FUNC12(intel_dp);
		return;
	}

	/* Now read the DPCD to see if it's actually running */
	if (!FUNC8(intel_dp)) {
		FUNC12(intel_dp);
		return;
	}

	/* Try to read the source of the interrupt */
	if (intel_dp->dpcd[DP_DPCD_REV] >= 0x11 &&
	    FUNC10(intel_dp, &sink_irq_vector)) {
		/* Clear interrupt source */
		FUNC6(intel_dp,
					    DP_DEVICE_SERVICE_IRQ_VECTOR,
					    sink_irq_vector);

		if (sink_irq_vector & DP_AUTOMATED_TEST_REQUEST)
			FUNC11(intel_dp);
		if (sink_irq_vector & (DP_CP_IRQ | DP_SINK_SPECIFIC_IRQ))
			FUNC0("CP or sink specific irq unhandled\n");
	}

	if (!FUNC4(link_status, intel_dp->lane_count)) {
		FUNC1("%s: channel EQ not ok, retraining\n",
			      FUNC5(&intel_encoder->base));
		FUNC13(intel_dp);
		FUNC7(intel_dp);
	}
}