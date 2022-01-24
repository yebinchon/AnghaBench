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
typedef  scalar_t__ u_int ;
struct ahd_tmode_tstate {struct ahd_tmode_lstate** enabled_luns; } ;
struct ahd_tmode_lstate {int dummy; } ;
struct ahd_softc {struct ahd_tmode_tstate** enabled_targets; } ;
struct ahd_devinfo {int target; int channel; size_t our_scsiid; int /*<<< orphan*/  role; } ;
typedef  scalar_t__ cam_status ;

/* Variables and functions */
 int /*<<< orphan*/  AC_SENT_BDR ; 
 scalar_t__ AHD_NUM_LUNS ; 
 int /*<<< orphan*/  AHD_TRANS_CUR ; 
 scalar_t__ CAM_LUN_WILDCARD ; 
 scalar_t__ CAM_SEL_TIMEOUT ; 
 int /*<<< orphan*/  MSG_BUS_DEV_RESET ; 
 int /*<<< orphan*/  MSG_EXT_WDTR_BUS_8_BIT ; 
 int /*<<< orphan*/  SCB_LIST_NULL ; 
 int /*<<< orphan*/  TRUE ; 
 int FUNC0 (struct ahd_softc*,int,int,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 char* FUNC1 (struct ahd_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct ahd_softc*,struct ahd_tmode_lstate*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ahd_softc*,int,int,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ahd_softc*,struct ahd_tmode_lstate*) ; 
 int /*<<< orphan*/  FUNC5 (struct ahd_softc*,struct ahd_devinfo*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ahd_softc*,struct ahd_devinfo*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,char*,int,int,int) ; 

__attribute__((used)) static void
FUNC8(struct ahd_softc *ahd, struct ahd_devinfo *devinfo,
		    u_int lun, cam_status status, char *message,
		    int verbose_level)
{
#ifdef AHD_TARGET_MODE
	struct ahd_tmode_tstate* tstate;
#endif
	int found;

	found = FUNC0(ahd, devinfo->target, devinfo->channel,
			       lun, SCB_LIST_NULL, devinfo->role,
			       status);

#ifdef AHD_TARGET_MODE
	/*
	 * Send an immediate notify ccb to all target mord peripheral
	 * drivers affected by this action.
	 */
	tstate = ahd->enabled_targets[devinfo->our_scsiid];
	if (tstate != NULL) {
		u_int cur_lun;
		u_int max_lun;

		if (lun != CAM_LUN_WILDCARD) {
			cur_lun = 0;
			max_lun = AHD_NUM_LUNS - 1;
		} else {
			cur_lun = lun;
			max_lun = lun;
		}
		for (;cur_lun <= max_lun; cur_lun++) {
			struct ahd_tmode_lstate* lstate;

			lstate = tstate->enabled_luns[cur_lun];
			if (lstate == NULL)
				continue;

			ahd_queue_lstate_event(ahd, lstate, devinfo->our_scsiid,
					       MSG_BUS_DEV_RESET, /*arg*/0);
			ahd_send_lstate_events(ahd, lstate);
		}
	}
#endif

	/*
	 * Go back to async/narrow transfers and renegotiate.
	 */
	FUNC6(ahd, devinfo, MSG_EXT_WDTR_BUS_8_BIT,
		      AHD_TRANS_CUR, /*paused*/TRUE);
	FUNC5(ahd, devinfo, /*period*/0, /*offset*/0,
			 /*ppr_options*/0, AHD_TRANS_CUR,
			 /*paused*/TRUE);
	
	if (status != CAM_SEL_TIMEOUT)
		FUNC3(ahd, devinfo->channel, devinfo->target,
			       CAM_LUN_WILDCARD, AC_SENT_BDR);

	if (message != NULL && bootverbose)
		FUNC7("%s: %s on %c:%d. %d SCBs aborted\n", FUNC1(ahd),
		       message, devinfo->channel, devinfo->target, found);
}