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
typedef  int u_int ;
struct scb {int flags; } ;
struct ahd_softc {int flags; int bugs; } ;
struct ahd_devinfo {int dummy; } ;

/* Variables and functions */
 int AHD_BUSFREEREV_BUG ; 
 int AHD_BUS_RESET_ACTIVE ; 
 int AHD_CLRLQO_AUTOCLR_BUG ; 
 int AHD_MODE_CFG ; 
 int AHD_MODE_DFF0 ; 
 int AHD_MODE_DFF1 ; 
 int AHD_MODE_SCSI ; 
 int AHD_SHOW_MISC ; 
 int AHD_SHOW_SELTO ; 
 int BUSFREE ; 
 int BUSFREETIME ; 
#define  BUSFREE_DFF0 130 
#define  BUSFREE_DFF1 129 
#define  BUSFREE_LQO 128 
 int /*<<< orphan*/  CAM_LUN_WILDCARD ; 
 int /*<<< orphan*/  CAM_SEL_TIMEOUT ; 
 int CLRBUSFREE ; 
 int /*<<< orphan*/  CLRINT ; 
 int CLRIOERR ; 
 int CLRLQICRCI_NLQ ; 
 int /*<<< orphan*/  CLRLQIINT1 ; 
 int /*<<< orphan*/  CLRLQOINT0 ; 
 int /*<<< orphan*/  CLRLQOINT1 ; 
 int CLRSCSIINT ; 
 int CLRSCSIPERR ; 
 int CLRSCSIRSTI ; 
 int CLRSELINGO ; 
 int CLRSELTIMEO ; 
 int /*<<< orphan*/  CLRSINT0 ; 
 int /*<<< orphan*/  CLRSINT1 ; 
 int /*<<< orphan*/  CLRSINT3 ; 
 int ENAB40 ; 
 int ENBUSFREE ; 
 int ENSELO ; 
 int /*<<< orphan*/  FALSE ; 
 int IOERR ; 
 int /*<<< orphan*/  LASTPHASE ; 
 int LQICRCI_NLQ ; 
 int LQIPHASE_LQ ; 
 int LQIPHASE_NLQ ; 
 int /*<<< orphan*/  LQISTAT1 ; 
 int LQOBUSFREE ; 
 int /*<<< orphan*/  LQOSTAT0 ; 
 int /*<<< orphan*/  LQOSTAT1 ; 
 int NOT_IDENTIFIED ; 
 int NTRAMPERR ; 
 int OSRAMPERR ; 
 int OVERRUN ; 
 int P_BUSFREE ; 
 int /*<<< orphan*/  SBLKCTL ; 
 int SCB_PACKETIZED ; 
 int SCSIPERR ; 
 int SCSIRSTI ; 
 int /*<<< orphan*/  SCSISEQ0 ; 
 int SELDI ; 
 int SELDO ; 
 int SELTO ; 
 int /*<<< orphan*/  SEQ_FLAGS ; 
 int /*<<< orphan*/  SIMODE0 ; 
 int /*<<< orphan*/  SIMODE1 ; 
 int /*<<< orphan*/  SSTAT0 ; 
 int /*<<< orphan*/  SSTAT1 ; 
 int /*<<< orphan*/  SSTAT2 ; 
 int /*<<< orphan*/  SSTAT3 ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  WAITING_TID_HEAD ; 
 int /*<<< orphan*/  FUNC0 (struct ahd_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct ahd_softc*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ahd_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct ahd_softc*) ; 
 int ahd_debug ; 
 int /*<<< orphan*/  FUNC4 (struct ahd_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct ahd_softc*,struct scb*) ; 
 int FUNC6 (struct ahd_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct ahd_softc*,struct ahd_devinfo*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct ahd_softc*,int) ; 
 int FUNC9 (struct ahd_softc*) ; 
 int FUNC10 (struct ahd_softc*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct ahd_softc*) ; 
 int FUNC12 (struct ahd_softc*,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct ahd_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct ahd_softc*) ; 
 struct scb* FUNC15 (struct ahd_softc*,int) ; 
 char* FUNC16 (struct ahd_softc*) ; 
 int /*<<< orphan*/  FUNC17 (struct ahd_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC18 (struct ahd_softc*) ; 
 int /*<<< orphan*/  FUNC19 (struct ahd_softc*,struct scb*) ; 
 int /*<<< orphan*/  FUNC20 (struct ahd_softc*,char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct ahd_softc*) ; 
 int /*<<< orphan*/  FUNC22 (struct ahd_softc*,struct ahd_devinfo*,struct scb*) ; 
 int /*<<< orphan*/  FUNC23 (struct ahd_softc*,int,int) ; 
 int /*<<< orphan*/  FUNC24 (struct scb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (struct ahd_softc*) ; 
 int /*<<< orphan*/  FUNC26 (struct ahd_softc*) ; 
 int /*<<< orphan*/  FUNC27 (struct ahd_softc*) ; 
 int /*<<< orphan*/  FUNC28 (char*,...) ; 

__attribute__((used)) static void
FUNC29(struct ahd_softc *ahd, u_int intstat)
{
	struct scb	*scb;
	u_int		 status0;
	u_int		 status3;
	u_int		 status;
	u_int		 lqistat1;
	u_int		 lqostat0;
	u_int		 scbid;
	u_int		 busfreetime;

	FUNC27(ahd);
	FUNC23(ahd, AHD_MODE_SCSI, AHD_MODE_SCSI);

	status3 = FUNC12(ahd, SSTAT3) & (NTRAMPERR|OSRAMPERR);
	status0 = FUNC12(ahd, SSTAT0) & (IOERR|OVERRUN|SELDI|SELDO);
	status = FUNC12(ahd, SSTAT1) & (SELTO|SCSIRSTI|BUSFREE|SCSIPERR);
	lqistat1 = FUNC12(ahd, LQISTAT1);
	lqostat0 = FUNC12(ahd, LQOSTAT0);
	busfreetime = FUNC12(ahd, SSTAT2) & BUSFREETIME;

	/*
	 * Ignore external resets after a bus reset.
	 */
	if (((status & SCSIRSTI) != 0) && (ahd->flags & AHD_BUS_RESET_ACTIVE)) {
		FUNC17(ahd, CLRSINT1, CLRSCSIRSTI);
		return;
	}

	/*
	 * Clear bus reset flag
	 */
	ahd->flags &= ~AHD_BUS_RESET_ACTIVE;

	if ((status0 & (SELDI|SELDO)) != 0) {
		u_int simode0;

		FUNC23(ahd, AHD_MODE_CFG, AHD_MODE_CFG);
		simode0 = FUNC12(ahd, SIMODE0);
		status0 &= simode0 & (IOERR|OVERRUN|SELDI|SELDO);
		FUNC23(ahd, AHD_MODE_SCSI, AHD_MODE_SCSI);
	}
	scbid = FUNC6(ahd);
	scb = FUNC15(ahd, scbid);
	if (scb != NULL
	 && (FUNC12(ahd, SEQ_FLAGS) & NOT_IDENTIFIED) != 0)
		scb = NULL;

	if ((status0 & IOERR) != 0) {
		u_int now_lvd;

		now_lvd = FUNC12(ahd, SBLKCTL) & ENAB40;
		FUNC28("%s: Transceiver State Has Changed to %s mode\n",
		       FUNC16(ahd), now_lvd ? "LVD" : "SE");
		FUNC17(ahd, CLRSINT0, CLRIOERR);
		/*
		 * A change in I/O mode is equivalent to a bus reset.
		 */
		FUNC20(ahd, 'A', /*Initiate Reset*/TRUE);
		FUNC18(ahd);
		FUNC25(ahd);
		FUNC26(ahd);
	} else if ((status0 & OVERRUN) != 0) {

		FUNC28("%s: SCSI offset overrun detected.  Resetting bus.\n",
		       FUNC16(ahd));
		FUNC20(ahd, 'A', /*Initiate Reset*/TRUE);
	} else if ((status & SCSIRSTI) != 0) {

		FUNC28("%s: Someone reset channel A\n", FUNC16(ahd));
		FUNC20(ahd, 'A', /*Initiate Reset*/FALSE);
	} else if ((status & SCSIPERR) != 0) {

		/* Make sure the sequencer is in a safe location. */
		FUNC0(ahd);

		FUNC11(ahd);
	} else if (lqostat0 != 0) {

		FUNC28("%s: lqostat0 == 0x%x!\n", FUNC16(ahd), lqostat0);
		FUNC17(ahd, CLRLQOINT0, lqostat0);
		if ((ahd->bugs & AHD_CLRLQO_AUTOCLR_BUG) != 0)
			FUNC17(ahd, CLRLQOINT1, 0);
	} else if ((status & SELTO) != 0) {
		/* Stop the selection */
		FUNC17(ahd, SCSISEQ0, 0);

		/* Make sure the sequencer is in a safe location. */
		FUNC0(ahd);

		/* No more pending messages */
		FUNC3(ahd);

		/* Clear interrupt state */
		FUNC17(ahd, CLRSINT1, CLRSELTIMEO|CLRBUSFREE|CLRSCSIPERR);

		/*
		 * Although the driver does not care about the
		 * 'Selection in Progress' status bit, the busy
		 * LED does.  SELINGO is only cleared by a sucessfull
		 * selection, so we must manually clear it to insure
		 * the LED turns off just incase no future successful
		 * selections occur (e.g. no devices on the bus).
		 */
		FUNC17(ahd, CLRSINT0, CLRSELINGO);

		scbid = FUNC13(ahd, WAITING_TID_HEAD);
		scb = FUNC15(ahd, scbid);
		if (scb == NULL) {
			FUNC28("%s: ahd_intr - referenced scb not "
			       "valid during SELTO scb(0x%x)\n",
			       FUNC16(ahd), scbid);
			FUNC4(ahd);
		} else {
			struct ahd_devinfo devinfo;
#ifdef AHD_DEBUG
			if ((ahd_debug & AHD_SHOW_SELTO) != 0) {
				ahd_print_path(ahd, scb);
				printf("Saw Selection Timeout for SCB 0x%x\n",
				       scbid);
			}
#endif
			FUNC22(ahd, &devinfo, scb);
			FUNC24(scb, CAM_SEL_TIMEOUT);
			FUNC5(ahd, scb);

			/*
			 * Cancel any pending transactions on the device
			 * now that it seems to be missing.  This will
			 * also revert us to async/narrow transfers until
			 * we can renegotiate with the device.
			 */
			FUNC7(ahd, &devinfo,
					    CAM_LUN_WILDCARD,
					    CAM_SEL_TIMEOUT,
					    "Selection Timeout",
					    /*verbose_level*/1);
		}
		FUNC17(ahd, CLRINT, CLRSCSIINT);
		FUNC14(ahd);
		FUNC26(ahd);
	} else if ((status0 & (SELDI|SELDO)) != 0) {

		FUNC14(ahd);
		FUNC26(ahd);
	} else if (status3 != 0) {
		FUNC28("%s: SCSI Cell parity error SSTAT3 == 0x%x\n",
		       FUNC16(ahd), status3);
		FUNC17(ahd, CLRSINT3, status3);
	} else if ((lqistat1 & (LQIPHASE_LQ|LQIPHASE_NLQ)) != 0) {

		/* Make sure the sequencer is in a safe location. */
		FUNC0(ahd);

		FUNC8(ahd, lqistat1);
	} else if ((lqistat1 & LQICRCI_NLQ) != 0) {
		/*
		 * This status can be delayed during some
		 * streaming operations.  The SCSIPHASE
		 * handler has already dealt with this case
		 * so just clear the error.
		 */
		FUNC17(ahd, CLRLQIINT1, CLRLQICRCI_NLQ);
	} else if ((status & BUSFREE) != 0
		|| (lqistat1 & LQOBUSFREE) != 0) {
		u_int lqostat1;
		int   restart;
		int   clear_fifo;
		int   packetized;
		u_int mode;

		/*
		 * Clear our selection hardware as soon as possible.
		 * We may have an entry in the waiting Q for this target,
		 * that is affected by this busfree and we don't want to
		 * go about selecting the target while we handle the event.
		 */
		FUNC17(ahd, SCSISEQ0, 0);

		/* Make sure the sequencer is in a safe location. */
		FUNC0(ahd);

		/*
		 * Determine what we were up to at the time of
		 * the busfree.
		 */
		mode = AHD_MODE_SCSI;
		busfreetime = FUNC12(ahd, SSTAT2) & BUSFREETIME;
		lqostat1 = FUNC12(ahd, LQOSTAT1);
		switch (busfreetime) {
		case BUSFREE_DFF0:
		case BUSFREE_DFF1:
		{
			mode = busfreetime == BUSFREE_DFF0
			     ? AHD_MODE_DFF0 : AHD_MODE_DFF1;
			FUNC23(ahd, mode, mode);
			scbid = FUNC6(ahd);
			scb = FUNC15(ahd, scbid);
			if (scb == NULL) {
				FUNC28("%s: Invalid SCB %d in DFF%d "
				       "during unexpected busfree\n",
				       FUNC16(ahd), scbid, mode);
				packetized = 0;
			} else
				packetized = (scb->flags & SCB_PACKETIZED) != 0;
			clear_fifo = 1;
			break;
		}
		case BUSFREE_LQO:
			clear_fifo = 0;
			packetized = 1;
			break;
		default:
			clear_fifo = 0;
			packetized =  (lqostat1 & LQOBUSFREE) != 0;
			if (!packetized
			 && FUNC12(ahd, LASTPHASE) == P_BUSFREE
			 && (FUNC12(ahd, SSTAT0) & SELDI) == 0
			 && ((FUNC12(ahd, SSTAT0) & SELDO) == 0
			  || (FUNC12(ahd, SCSISEQ0) & ENSELO) == 0))
				/*
				 * Assume packetized if we are not
				 * on the bus in a non-packetized
				 * capacity and any pending selection
				 * was a packetized selection.
				 */
				packetized = 1;
			break;
		}

#ifdef AHD_DEBUG
		if ((ahd_debug & AHD_SHOW_MISC) != 0)
			printf("Saw Busfree.  Busfreetime = 0x%x.\n",
			       busfreetime);
#endif
		/*
		 * Busfrees that occur in non-packetized phases are
		 * handled by the nonpkt_busfree handler.
		 */
		if (packetized && FUNC12(ahd, LASTPHASE) == P_BUSFREE) {
			restart = FUNC10(ahd, busfreetime);
		} else {
			packetized = 0;
			restart = FUNC9(ahd);
		}
		/*
		 * Clear the busfree interrupt status.  The setting of
		 * the interrupt is a pulse, so in a perfect world, we
		 * would not need to muck with the ENBUSFREE logic.  This
		 * would ensure that if the bus moves on to another
		 * connection, busfree protection is still in force.  If
		 * BUSFREEREV is broken, however, we must manually clear
		 * the ENBUSFREE if the busfree occurred during a non-pack
		 * connection so that we don't get false positives during
		 * future, packetized, connections.
		 */
		FUNC17(ahd, CLRSINT1, CLRBUSFREE);
		if (packetized == 0
		 && (ahd->bugs & AHD_BUSFREEREV_BUG) != 0)
			FUNC17(ahd, SIMODE1,
				 FUNC12(ahd, SIMODE1) & ~ENBUSFREE);

		if (clear_fifo)
			FUNC1(ahd, mode);

		FUNC3(ahd);
		FUNC17(ahd, CLRINT, CLRSCSIINT);
		if (restart) {
			FUNC21(ahd);
		} else {
			FUNC26(ahd);
		}
	} else {
		FUNC28("%s: Missing case in ahd_handle_scsiint. status = %x\n",
		       FUNC16(ahd), status);
		FUNC4(ahd);
		FUNC2(ahd);
		FUNC26(ahd);
	}
}