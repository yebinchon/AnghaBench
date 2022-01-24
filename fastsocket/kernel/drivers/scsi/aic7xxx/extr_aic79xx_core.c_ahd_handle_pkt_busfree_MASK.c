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
struct scb {scalar_t__ crc_retry_count; } ;
struct ahd_softc {int bugs; scalar_t__ src_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ahd_softc*,int,int) ; 
 int AHD_CLRLQO_AUTOCLR_BUG ; 
 scalar_t__ AHD_MAX_LQ_CRC_ERRORS ; 
 int AHD_MODE_CFG_MSK ; 
 scalar_t__ AHD_MODE_SCSI ; 
 int AHD_MODE_UNKNOWN_MSK ; 
 int AHD_SHOW_MASKED_ERRORS ; 
 int /*<<< orphan*/  CAM_UNCOR_PARITY ; 
 int /*<<< orphan*/  CAM_UNEXP_BUSFREE ; 
 scalar_t__ CLRBUSFREE ; 
 scalar_t__ CLRLQOBUSFREE ; 
 int /*<<< orphan*/  CLRLQOINT1 ; 
 scalar_t__ CLRSCSIPERR ; 
 scalar_t__ CLRSELDO ; 
 int /*<<< orphan*/  CLRSINT0 ; 
 int /*<<< orphan*/  CLRSINT1 ; 
 int /*<<< orphan*/  CURRSCB ; 
 scalar_t__ ENSELO ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  LQCTL2 ; 
 scalar_t__ LQOBUSFREE ; 
 int /*<<< orphan*/  LQOSTAT1 ; 
 scalar_t__ LQOTOIDLE ; 
 scalar_t__ PARITYERR ; 
 int /*<<< orphan*/  PERRDIAG ; 
 int /*<<< orphan*/  ROLE_INITIATOR ; 
 int /*<<< orphan*/  FUNC1 (struct scb*) ; 
 int /*<<< orphan*/  FUNC2 (struct scb*) ; 
 int /*<<< orphan*/  FUNC3 (struct ahd_softc*,struct scb*) ; 
 scalar_t__ FUNC4 (struct scb*) ; 
 scalar_t__ SCB_LIST_NULL ; 
 int /*<<< orphan*/  SCB_NEXT2 ; 
 int /*<<< orphan*/  SCSISEQ0 ; 
 int /*<<< orphan*/  WAITING_TID_HEAD ; 
 int /*<<< orphan*/  WAITING_TID_TAIL ; 
 int /*<<< orphan*/  FUNC5 (struct ahd_softc*,int /*<<< orphan*/ ,char,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int ahd_debug ; 
 int /*<<< orphan*/  FUNC6 (struct ahd_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct ahd_softc*) ; 
 int /*<<< orphan*/  FUNC8 (struct ahd_softc*,struct scb*) ; 
 int /*<<< orphan*/  FUNC9 (struct scb*) ; 
 scalar_t__ FUNC10 (struct ahd_softc*) ; 
 scalar_t__ FUNC11 (struct ahd_softc*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (struct ahd_softc*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (struct ahd_softc*,int /*<<< orphan*/ ) ; 
 struct scb* FUNC14 (struct ahd_softc*,scalar_t__) ; 
 char* FUNC15 (struct ahd_softc*) ; 
 int /*<<< orphan*/  FUNC16 (struct ahd_softc*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (struct ahd_softc*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (struct ahd_softc*,struct scb*) ; 
 int /*<<< orphan*/  FUNC19 (struct ahd_softc*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC20 (struct ahd_softc*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC21 (struct scb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (char*) ; 
 int /*<<< orphan*/  FUNC23 (char*,...) ; 

__attribute__((used)) static int
FUNC24(struct ahd_softc *ahd, u_int busfreetime)
{
	u_int lqostat1;

	FUNC0(ahd, ~(AHD_MODE_UNKNOWN_MSK|AHD_MODE_CFG_MSK),
			 ~(AHD_MODE_UNKNOWN_MSK|AHD_MODE_CFG_MSK));
	lqostat1 = FUNC11(ahd, LQOSTAT1);
	if ((lqostat1 & LQOBUSFREE) != 0) {
		struct scb *scb;
		u_int scbid;
		u_int saved_scbptr;
		u_int waiting_h;
		u_int waiting_t;
		u_int next;

		/*
		 * The LQO manager detected an unexpected busfree
		 * either:
		 *
		 * 1) During an outgoing LQ.
		 * 2) After an outgoing LQ but before the first
		 *    REQ of the command packet.
		 * 3) During an outgoing command packet.
		 *
		 * In all cases, CURRSCB is pointing to the
		 * SCB that encountered the failure.  Clean
		 * up the queue, clear SELDO and LQOBUSFREE,
		 * and allow the sequencer to restart the select
		 * out at its lesure.
		 */
		FUNC19(ahd, AHD_MODE_SCSI, AHD_MODE_SCSI);
		scbid = FUNC12(ahd, CURRSCB);
		scb = FUNC14(ahd, scbid);
		if (scb == NULL)
		       FUNC22("SCB not valid during LQOBUSFREE");
		/*
		 * Clear the status.
		 */
		FUNC16(ahd, CLRLQOINT1, CLRLQOBUSFREE);
		if ((ahd->bugs & AHD_CLRLQO_AUTOCLR_BUG) != 0)
			FUNC16(ahd, CLRLQOINT1, 0);
		FUNC16(ahd, SCSISEQ0, FUNC11(ahd, SCSISEQ0) & ~ENSELO);
		FUNC7(ahd);
		FUNC16(ahd, CLRSINT0, CLRSELDO);

		/*
		 * Return the LQO manager to its idle loop.  It will
		 * not do this automatically if the busfree occurs
		 * after the first REQ of either the LQ or command
		 * packet or between the LQ and command packet.
		 */
		FUNC16(ahd, LQCTL2, FUNC11(ahd, LQCTL2) | LQOTOIDLE);

		/*
		 * Update the waiting for selection queue so
		 * we restart on the correct SCB.
		 */
		waiting_h = FUNC12(ahd, WAITING_TID_HEAD);
		saved_scbptr = FUNC10(ahd);
		if (waiting_h != scbid) {

			FUNC17(ahd, WAITING_TID_HEAD, scbid);
			waiting_t = FUNC12(ahd, WAITING_TID_TAIL);
			if (waiting_t == waiting_h) {
				FUNC17(ahd, WAITING_TID_TAIL, scbid);
				next = SCB_LIST_NULL;
			} else {
				FUNC20(ahd, waiting_h);
				next = FUNC13(ahd, SCB_NEXT2);
			}
			FUNC20(ahd, scbid);
			FUNC17(ahd, SCB_NEXT2, next);
		}
		FUNC20(ahd, saved_scbptr);
		if (scb->crc_retry_count < AHD_MAX_LQ_CRC_ERRORS) {
			if (FUNC4(scb) == FALSE) {
				FUNC18(ahd, scb);
				FUNC23("Probable outgoing LQ CRC error.  "
				       "Retrying command\n");
			}
			scb->crc_retry_count++;
		} else {
			FUNC21(scb, CAM_UNCOR_PARITY);
			FUNC9(scb);
			FUNC8(ahd, scb);
		}
		/* Return unpausing the sequencer. */
		return (0);
	} else if ((FUNC11(ahd, PERRDIAG) & PARITYERR) != 0) {
		/*
		 * Ignore what are really parity errors that
		 * occur on the last REQ of a free running
		 * clock prior to going busfree.  Some drives
		 * do not properly active negate just before
		 * going busfree resulting in a parity glitch.
		 */
		FUNC16(ahd, CLRSINT1, CLRSCSIPERR|CLRBUSFREE);
#ifdef AHD_DEBUG
		if ((ahd_debug & AHD_SHOW_MASKED_ERRORS) != 0)
			printf("%s: Parity on last REQ detected "
			       "during busfree phase.\n",
			       ahd_name(ahd));
#endif
		/* Return unpausing the sequencer. */
		return (0);
	}
	if (ahd->src_mode != AHD_MODE_SCSI) {
		u_int	scbid;
		struct	scb *scb;

		scbid = FUNC10(ahd);
		scb = FUNC14(ahd, scbid);
		FUNC18(ahd, scb);
		FUNC23("Unexpected PKT busfree condition\n");
		FUNC6(ahd);
		FUNC5(ahd, FUNC3(ahd, scb), 'A',
			       FUNC1(scb), FUNC2(scb),
			       ROLE_INITIATOR, CAM_UNEXP_BUSFREE);

		/* Return restarting the sequencer. */
		return (1);
	}
	FUNC23("%s: Unexpected PKT busfree condition\n", FUNC15(ahd));
	FUNC6(ahd);
	/* Restart the sequencer. */
	return (1);
}