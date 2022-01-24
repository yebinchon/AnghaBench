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
typedef  size_t uint8_t ;
typedef  size_t u_int ;
struct ahd_tmode_tstate {struct ahd_tmode_lstate** enabled_luns; } ;
struct ahd_tmode_lstate {int dummy; } ;
struct ahd_softc {int flags; int features; struct ahd_tmode_tstate** enabled_targets; int /*<<< orphan*/ * pending_device; } ;
struct ahd_devinfo {int /*<<< orphan*/  channel; } ;

/* Variables and functions */
 int /*<<< orphan*/  AC_BUS_RESET ; 
 int AHD_BUS_RESET_ACTIVE ; 
 size_t AHD_MODE_SCSI ; 
 size_t AHD_NUM_LUNS ; 
 int AHD_TARGETROLE ; 
 int /*<<< orphan*/  AHD_TRANS_CUR ; 
 int AHD_WIDE ; 
 int /*<<< orphan*/  CAM_LUN_WILDCARD ; 
 int /*<<< orphan*/  CAM_SCSI_BUS_RESET ; 
 size_t CAM_TARGET_WILDCARD ; 
 size_t CLRSCSIRSTI ; 
 int /*<<< orphan*/  CLRSINT1 ; 
 size_t CURRFIFO ; 
 size_t CURRFIFO_1 ; 
 int /*<<< orphan*/  DFCNTRL ; 
 int /*<<< orphan*/  DFFSTAT ; 
 size_t ENAUTOATNP ; 
 size_t ENBUSFREE ; 
 size_t ENRSELI ; 
 size_t ENSCSIRST ; 
 size_t ENSELI ; 
 int /*<<< orphan*/  EVENT_TYPE_BUS_RESET ; 
 size_t HDMAEN ; 
 size_t HDMAENACK ; 
 int /*<<< orphan*/  MSG_EXT_WDTR_BUS_8_BIT ; 
 int /*<<< orphan*/  ROLE_UNKNOWN ; 
 int /*<<< orphan*/  SCB_LIST_NULL ; 
 size_t SCSIEN ; 
 int /*<<< orphan*/  SCSISEQ0 ; 
 int /*<<< orphan*/  SCSISEQ1 ; 
 int /*<<< orphan*/  SCSISEQ_TEMPLATE ; 
 int /*<<< orphan*/  SIMODE1 ; 
 int /*<<< orphan*/  TRUE ; 
 int FUNC0 (struct ahd_softc*,size_t,char,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ahd_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct ahd_softc*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ahd_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct ahd_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct ahd_devinfo*,size_t,size_t,int /*<<< orphan*/ ,char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 size_t FUNC7 (struct ahd_softc*,int /*<<< orphan*/ ) ; 
 char* FUNC8 (struct ahd_softc*) ; 
 int /*<<< orphan*/  FUNC9 (struct ahd_softc*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC10 (struct ahd_softc*) ; 
 int /*<<< orphan*/  FUNC11 (struct ahd_softc*,struct ahd_tmode_lstate*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct ahd_softc*) ; 
 int /*<<< orphan*/  FUNC13 (struct ahd_softc*) ; 
 int /*<<< orphan*/  FUNC14 (struct ahd_softc*) ; 
 int /*<<< orphan*/  FUNC15 (struct ahd_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct ahd_softc*,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct ahd_softc*,struct ahd_tmode_lstate*) ; 
 int /*<<< orphan*/  FUNC18 (struct ahd_softc*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC19 (struct ahd_softc*,struct ahd_devinfo*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct ahd_softc*,struct ahd_devinfo*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (char*,char*) ; 

int
FUNC22(struct ahd_softc *ahd, char channel, int initiate_reset)
{
	struct	ahd_devinfo caminfo;
	u_int	initiator;
	u_int	target;
	u_int	max_scsiid;
	int	found;
	u_int	fifo;
	u_int	next_fifo;
	uint8_t scsiseq;

	/*
	 * Check if the last bus reset is cleared
	 */
	if (ahd->flags & AHD_BUS_RESET_ACTIVE) {
		FUNC21("%s: bus reset still active\n",
		       FUNC8(ahd));
		return 0;
	}
	ahd->flags |= AHD_BUS_RESET_ACTIVE;

	ahd->pending_device = NULL;

	FUNC5(&caminfo,
			    CAM_TARGET_WILDCARD,
			    CAM_TARGET_WILDCARD,
			    CAM_LUN_WILDCARD,
			    channel, ROLE_UNKNOWN);
	FUNC10(ahd);

	/* Make sure the sequencer is in a safe location. */
	FUNC1(ahd);

	/*
	 * Run our command complete fifos to ensure that we perform
	 * completion processing on any commands that 'completed'
	 * before the reset occurred.
	 */
	FUNC14(ahd);
#ifdef AHD_TARGET_MODE
	if ((ahd->flags & AHD_TARGETROLE) != 0) {
		ahd_run_tqinfifo(ahd, /*paused*/TRUE);
	}
#endif
	FUNC18(ahd, AHD_MODE_SCSI, AHD_MODE_SCSI);

	/*
	 * Disable selections so no automatic hardware
	 * functions will modify chip state.
	 */
	FUNC9(ahd, SCSISEQ0, 0);
	FUNC9(ahd, SCSISEQ1, 0);

	/*
	 * Safely shut down our DMA engines.  Always start with
	 * the FIFO that is not currently active (if any are
	 * actively connected).
	 */
	next_fifo = fifo = FUNC7(ahd, DFFSTAT) & CURRFIFO;
	if (next_fifo > CURRFIFO_1)
		/* If disconneced, arbitrarily start with FIFO1. */
		next_fifo = fifo = 0;
	do {
		next_fifo ^= CURRFIFO_1;
		FUNC18(ahd, next_fifo, next_fifo);
		FUNC9(ahd, DFCNTRL,
			 FUNC7(ahd, DFCNTRL) & ~(SCSIEN|HDMAEN));
		while ((FUNC7(ahd, DFCNTRL) & HDMAENACK) != 0)
			FUNC6(10);
		/*
		 * Set CURRFIFO to the now inactive channel.
		 */
		FUNC18(ahd, AHD_MODE_SCSI, AHD_MODE_SCSI);
		FUNC9(ahd, DFFSTAT, next_fifo);
	} while (next_fifo != fifo);

	/*
	 * Reset the bus if we are initiating this reset
	 */
	FUNC4(ahd);
	FUNC9(ahd, SIMODE1,
		 FUNC7(ahd, SIMODE1) & ~(ENBUSFREE|ENSCSIRST));

	if (initiate_reset)
		FUNC12(ahd);

	FUNC3(ahd);

	/*
	 * Clean up all the state information for the
	 * pending transactions on this bus.
	 */
	found = FUNC0(ahd, CAM_TARGET_WILDCARD, channel,
			       CAM_LUN_WILDCARD, SCB_LIST_NULL,
			       ROLE_UNKNOWN, CAM_SCSI_BUS_RESET);

	/*
	 * Cleanup anything left in the FIFOs.
	 */
	FUNC2(ahd, 0);
	FUNC2(ahd, 1);

	/*
	 * Clear SCSI interrupt status
	 */
	FUNC9(ahd, CLRSINT1, CLRSCSIRSTI);

	/*
	 * Reenable selections
	 */
	FUNC9(ahd, SIMODE1, FUNC7(ahd, SIMODE1) | ENSCSIRST);
	scsiseq = FUNC7(ahd, SCSISEQ_TEMPLATE);
	FUNC9(ahd, SCSISEQ1, scsiseq & (ENSELI|ENRSELI|ENAUTOATNP));

	max_scsiid = (ahd->features & AHD_WIDE) ? 15 : 7;
#ifdef AHD_TARGET_MODE
	/*
	 * Send an immediate notify ccb to all target more peripheral
	 * drivers affected by this action.
	 */
	for (target = 0; target <= max_scsiid; target++) {
		struct ahd_tmode_tstate* tstate;
		u_int lun;

		tstate = ahd->enabled_targets[target];
		if (tstate == NULL)
			continue;
		for (lun = 0; lun < AHD_NUM_LUNS; lun++) {
			struct ahd_tmode_lstate* lstate;

			lstate = tstate->enabled_luns[lun];
			if (lstate == NULL)
				continue;

			ahd_queue_lstate_event(ahd, lstate, CAM_TARGET_WILDCARD,
					       EVENT_TYPE_BUS_RESET, /*arg*/0);
			ahd_send_lstate_events(ahd, lstate);
		}
	}
#endif
	/*
	 * Revert to async/narrow transfers until we renegotiate.
	 */
	for (target = 0; target <= max_scsiid; target++) {

		if (ahd->enabled_targets[target] == NULL)
			continue;
		for (initiator = 0; initiator <= max_scsiid; initiator++) {
			struct ahd_devinfo devinfo;

			FUNC5(&devinfo, target, initiator,
					    CAM_LUN_WILDCARD,
					    'A', ROLE_UNKNOWN);
			FUNC20(ahd, &devinfo, MSG_EXT_WDTR_BUS_8_BIT,
				      AHD_TRANS_CUR, /*paused*/TRUE);
			FUNC19(ahd, &devinfo, /*period*/0,
					 /*offset*/0, /*ppr_options*/0,
					 AHD_TRANS_CUR, /*paused*/TRUE);
		}
	}

	/* Notify the XPT that a bus reset occurred */
	FUNC16(ahd, caminfo.channel, CAM_TARGET_WILDCARD,
		       CAM_LUN_WILDCARD, AC_BUS_RESET);

	FUNC13(ahd);

	return (found);
}