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
struct pvr2_hdw {scalar_t__ fw1_state; scalar_t__ flag_modulefail; scalar_t__ flag_init_ok; } ;

/* Variables and functions */
 scalar_t__ FW1_STATE_MISSING ; 
 scalar_t__ FW1_STATE_RELOAD ; 
 scalar_t__ FW1_STATE_UNKNOWN ; 
 int /*<<< orphan*/  PVR2_TRACE_ERROR_LEGS ; 
 int /*<<< orphan*/  PVR2_TRACE_INFO ; 
 int /*<<< orphan*/  PVR2_TRACE_INIT ; 
 scalar_t__ procreload ; 
 scalar_t__ FUNC0 (struct pvr2_hdw*) ; 
 int /*<<< orphan*/  FUNC1 (struct pvr2_hdw*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct pvr2_hdw*) ; 

__attribute__((used)) static void FUNC4(struct pvr2_hdw *hdw)
{
	FUNC2(PVR2_TRACE_INIT,"pvr2_hdw_setup(hdw=%p) begin",hdw);
	do {
		FUNC1(hdw);
		FUNC2(PVR2_TRACE_INIT,
			   "pvr2_hdw_setup(hdw=%p) done, ok=%d init_ok=%d",
			   hdw,FUNC0(hdw),hdw->flag_init_ok);
		if (FUNC0(hdw)) {
			if (hdw->flag_init_ok) {
				FUNC2(
					PVR2_TRACE_INFO,
					"Device initialization"
					" completed successfully.");
				break;
			}
			if (hdw->fw1_state == FW1_STATE_RELOAD) {
				FUNC2(
					PVR2_TRACE_INFO,
					"Device microcontroller firmware"
					" (re)loaded; it should now reset"
					" and reconnect.");
				break;
			}
			FUNC2(
				PVR2_TRACE_ERROR_LEGS,
				"Device initialization was not successful.");
			if (hdw->fw1_state == FW1_STATE_MISSING) {
				FUNC2(
					PVR2_TRACE_ERROR_LEGS,
					"Giving up since device"
					" microcontroller firmware"
					" appears to be missing.");
				break;
			}
		}
		if (hdw->flag_modulefail) {
			FUNC2(
				PVR2_TRACE_ERROR_LEGS,
				"***WARNING*** pvrusb2 driver initialization"
				" failed due to the failure of one or more"
				" sub-device kernel modules.");
			FUNC2(
				PVR2_TRACE_ERROR_LEGS,
				"You need to resolve the failing condition"
				" before this driver can function.  There"
				" should be some earlier messages giving more"
				" information about the problem.");
			break;
		}
		if (procreload) {
			FUNC2(
				PVR2_TRACE_ERROR_LEGS,
				"Attempting pvrusb2 recovery by reloading"
				" primary firmware.");
			FUNC2(
				PVR2_TRACE_ERROR_LEGS,
				"If this works, device should disconnect"
				" and reconnect in a sane state.");
			hdw->fw1_state = FW1_STATE_UNKNOWN;
			FUNC3(hdw);
		} else {
			FUNC2(
				PVR2_TRACE_ERROR_LEGS,
				"***WARNING*** pvrusb2 device hardware"
				" appears to be jammed"
				" and I can't clear it.");
			FUNC2(
				PVR2_TRACE_ERROR_LEGS,
				"You might need to power cycle"
				" the pvrusb2 device"
				" in order to recover.");
		}
	} while (0);
	FUNC2(PVR2_TRACE_INIT,"pvr2_hdw_setup(hdw=%p) end",hdw);
}