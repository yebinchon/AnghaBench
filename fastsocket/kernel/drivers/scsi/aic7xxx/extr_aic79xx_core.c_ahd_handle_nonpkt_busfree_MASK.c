#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_int ;
struct scb {int flags; TYPE_1__* hscb; TYPE_3__* io_ctx; } ;
struct ahd_tmode_tstate {int dummy; } ;
struct ahd_softc {int msg_flags; int* msgout_buf; int msgout_index; } ;
struct TYPE_11__ {int transport_version; scalar_t__ ppr_options; } ;
struct TYPE_10__ {int ppr_options; int transport_version; } ;
struct ahd_initiator_tinfo {TYPE_5__ goal; TYPE_4__ curr; } ;
struct ahd_devinfo {int /*<<< orphan*/  target; int /*<<< orphan*/  our_scsiid; int /*<<< orphan*/  channel; } ;
struct TYPE_12__ {char* phasemsg; } ;
struct TYPE_8__ {scalar_t__ func_code; } ;
struct TYPE_9__ {TYPE_2__ ccb_h; } ;
struct TYPE_7__ {scalar_t__ lun; int control; } ;

/* Variables and functions */
 int /*<<< orphan*/  AHDMSG_1B ; 
 int /*<<< orphan*/  AHDMSG_EXT ; 
 int AHD_SHOW_MESSAGES ; 
 int AHD_TRANS_CUR ; 
 int AHD_TRANS_GOAL ; 
 int /*<<< orphan*/  CAM_BDR_SENT ; 
 int /*<<< orphan*/  CAM_LUN_WILDCARD ; 
 int /*<<< orphan*/  CAM_REQUEUE_REQ ; 
 int /*<<< orphan*/  CAM_REQ_ABORTED ; 
 int /*<<< orphan*/  CAM_REQ_CMP ; 
 int /*<<< orphan*/  CAM_UNEXP_BUSFREE ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  LASTPHASE ; 
 int MSG_ABORT ; 
 int MSG_ABORT_TAG ; 
 int MSG_BUS_DEV_RESET ; 
 int MSG_EXT_PPR ; 
 int MSG_EXT_PPR_IU_REQ ; 
 int MSG_EXT_SDTR ; 
 int MSG_EXT_WDTR ; 
 int /*<<< orphan*/  MSG_EXT_WDTR_BUS_8_BIT ; 
 int MSG_FLAG_EXPECT_IDE_BUSFREE ; 
 int MSG_FLAG_EXPECT_PPR_BUSFREE ; 
 int MSG_FLAG_EXPECT_QASREJ_BUSFREE ; 
 int MSG_FLAG_IU_REQ_CHANGED ; 
 int MSG_INITIATOR_DET_ERR ; 
 int MSG_MESSAGE_REJECT ; 
 scalar_t__ NOT_IDENTIFIED ; 
 int /*<<< orphan*/  PRGMCNT ; 
 scalar_t__ P_BUSFREE ; 
 scalar_t__ P_MESGIN ; 
 scalar_t__ P_MESGOUT ; 
 int /*<<< orphan*/  ROLE_INITIATOR ; 
 int /*<<< orphan*/  SAVED_LUN ; 
 int /*<<< orphan*/  SAVED_SCSIID ; 
 int SCB_EXTERNAL_RESET ; 
 char FUNC0 (struct ahd_softc*,struct scb*) ; 
 scalar_t__ FUNC1 (struct scb*) ; 
 int FUNC2 (struct scb*) ; 
 scalar_t__ FUNC3 (struct ahd_softc*,struct scb*) ; 
 scalar_t__ SCB_LIST_NULL ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (struct ahd_softc*,scalar_t__) ; 
 int /*<<< orphan*/  SEQ_FLAGS ; 
 int TAG_ENB ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ XPT_RESET_DEV ; 
 int FUNC6 (struct ahd_softc*,scalar_t__,char,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ahd_devinfo*,scalar_t__,scalar_t__,scalar_t__,char,int /*<<< orphan*/ ) ; 
 int ahd_debug ; 
 int /*<<< orphan*/  FUNC8 (struct ahd_softc*,struct scb*) ; 
 int /*<<< orphan*/  FUNC9 (struct ahd_softc*) ; 
 struct ahd_initiator_tinfo* FUNC10 (struct ahd_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ahd_tmode_tstate**) ; 
 int /*<<< orphan*/  FUNC11 (struct ahd_softc*,struct ahd_devinfo*) ; 
 int /*<<< orphan*/  FUNC12 (struct ahd_softc*,struct scb*) ; 
 int /*<<< orphan*/  FUNC13 (struct scb*) ; 
 scalar_t__ FUNC14 (struct ahd_softc*) ; 
 int /*<<< orphan*/  FUNC15 (struct ahd_softc*,struct ahd_devinfo*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (struct ahd_softc*,int /*<<< orphan*/ ) ; 
 int FUNC17 (struct ahd_softc*,int /*<<< orphan*/ ) ; 
 TYPE_6__* FUNC18 (scalar_t__) ; 
 struct scb* FUNC19 (struct ahd_softc*,scalar_t__) ; 
 scalar_t__ FUNC20 (struct ahd_softc*,struct scb*,scalar_t__,char,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 char* FUNC21 (struct ahd_softc*) ; 
 int /*<<< orphan*/  FUNC22 (struct ahd_softc*,struct ahd_devinfo*) ; 
 int /*<<< orphan*/  FUNC23 (struct ahd_softc*,struct scb*) ; 
 int /*<<< orphan*/  FUNC24 (struct ahd_softc*,struct scb*) ; 
 scalar_t__ FUNC25 (struct ahd_softc*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (struct ahd_softc*,struct ahd_devinfo*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (struct scb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (struct ahd_softc*,struct ahd_devinfo*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (char*,...) ; 

__attribute__((used)) static int
FUNC30(struct ahd_softc *ahd)
{
	struct	ahd_devinfo devinfo;
	struct	scb *scb;
	u_int	lastphase;
	u_int	saved_scsiid;
	u_int	saved_lun;
	u_int	target;
	u_int	initiator_role_id;
	u_int	scbid;
	u_int	ppr_busfree;
	int	printerror;

	/*
	 * Look at what phase we were last in.  If its message out,
	 * chances are pretty good that the busfree was in response
	 * to one of our abort requests.
	 */
	lastphase = FUNC16(ahd, LASTPHASE);
	saved_scsiid = FUNC16(ahd, SAVED_SCSIID);
	saved_lun = FUNC16(ahd, SAVED_LUN);
	target = FUNC5(ahd, saved_scsiid);
	initiator_role_id = FUNC4(saved_scsiid);
	FUNC7(&devinfo, initiator_role_id,
			    target, saved_lun, 'A', ROLE_INITIATOR);
	printerror = 1;

	scbid = FUNC14(ahd);
	scb = FUNC19(ahd, scbid);
	if (scb != NULL
	 && (FUNC16(ahd, SEQ_FLAGS) & NOT_IDENTIFIED) != 0)
		scb = NULL;

	ppr_busfree = (ahd->msg_flags & MSG_FLAG_EXPECT_PPR_BUSFREE) != 0;
	if (lastphase == P_MESGOUT) {
		u_int tag;

		tag = SCB_LIST_NULL;
		if (FUNC25(ahd, AHDMSG_1B, MSG_ABORT_TAG, TRUE)
		 || FUNC25(ahd, AHDMSG_1B, MSG_ABORT, TRUE)) {
			int found;
			int sent_msg;

			if (scb == NULL) {
				FUNC22(ahd, &devinfo);
				FUNC29("Abort for unidentified "
				       "connection completed.\n");
				/* restart the sequencer. */
				return (1);
			}
			sent_msg = ahd->msgout_buf[ahd->msgout_index - 1];
			FUNC23(ahd, scb);
			FUNC29("SCB %d - Abort%s Completed.\n",
			       FUNC2(scb),
			       sent_msg == MSG_ABORT_TAG ? "" : " Tag");

			if (sent_msg == MSG_ABORT_TAG)
				tag = FUNC2(scb);

			if ((scb->flags & SCB_EXTERNAL_RESET) != 0) {
				/*
				 * This abort is in response to an
				 * unexpected switch to command phase
				 * for a packetized connection.  Since
				 * the identify message was never sent,
				 * "saved lun" is 0.  We really want to
				 * abort only the SCB that encountered
				 * this error, which could have a different
				 * lun.  The SCB will be retried so the OS
				 * will see the UA after renegotiating to
				 * packetized.
				 */
				tag = FUNC2(scb);
				saved_lun = scb->hscb->lun;
			}
			found = FUNC6(ahd, target, 'A', saved_lun,
					       tag, ROLE_INITIATOR,
					       CAM_REQ_ABORTED);
			FUNC29("found == 0x%x\n", found);
			printerror = 0;
		} else if (FUNC25(ahd, AHDMSG_1B,
					MSG_BUS_DEV_RESET, TRUE)) {
#ifdef __FreeBSD__
			/*
			 * Don't mark the user's request for this BDR
			 * as completing with CAM_BDR_SENT.  CAM3
			 * specifies CAM_REQ_CMP.
			 */
			if (scb != NULL
			 && scb->io_ctx->ccb_h.func_code== XPT_RESET_DEV
			 && ahd_match_scb(ahd, scb, target, 'A',
					  CAM_LUN_WILDCARD, SCB_LIST_NULL,
					  ROLE_INITIATOR))
				ahd_set_transaction_status(scb, CAM_REQ_CMP);
#endif
			FUNC15(ahd, &devinfo, CAM_LUN_WILDCARD,
					    CAM_BDR_SENT, "Bus Device Reset",
					    /*verbose_level*/0);
			printerror = 0;
		} else if (FUNC25(ahd, AHDMSG_EXT, MSG_EXT_PPR, FALSE)
			&& ppr_busfree == 0) {
			struct ahd_initiator_tinfo *tinfo;
			struct ahd_tmode_tstate *tstate;

			/*
			 * PPR Rejected.
			 *
			 * If the previous negotiation was packetized,
			 * this could be because the device has been
			 * reset without our knowledge.  Force our
			 * current negotiation to async and retry the
			 * negotiation.  Otherwise retry the command
			 * with non-ppr negotiation.
			 */
#ifdef AHD_DEBUG
			if ((ahd_debug & AHD_SHOW_MESSAGES) != 0)
				printf("PPR negotiation rejected busfree.\n");
#endif
			tinfo = FUNC10(ahd, devinfo.channel,
						    devinfo.our_scsiid,
						    devinfo.target, &tstate);
			if ((tinfo->curr.ppr_options & MSG_EXT_PPR_IU_REQ)!=0) {
				FUNC28(ahd, &devinfo,
					      MSG_EXT_WDTR_BUS_8_BIT,
					      AHD_TRANS_CUR,
					      /*paused*/TRUE);
				FUNC26(ahd, &devinfo,
						/*period*/0, /*offset*/0,
						/*ppr_options*/0,
						AHD_TRANS_CUR,
						/*paused*/TRUE);
				/*
				 * The expect PPR busfree handler below
				 * will effect the retry and necessary
				 * abort.
				 */
			} else {
				tinfo->curr.transport_version = 2;
				tinfo->goal.transport_version = 2;
				tinfo->goal.ppr_options = 0;
				if (scb != NULL) {
					/*
					 * Remove any SCBs in the waiting
					 * for selection queue that may
					 * also be for this target so that
					 * command ordering is preserved.
					 */
					FUNC12(ahd, scb);
					FUNC24(ahd, scb);
				}
				printerror = 0;
			}
		} else if (FUNC25(ahd, AHDMSG_EXT, MSG_EXT_WDTR, FALSE)
			&& ppr_busfree == 0) {
			/*
			 * Negotiation Rejected.  Go-narrow and
			 * retry command.
			 */
#ifdef AHD_DEBUG
			if ((ahd_debug & AHD_SHOW_MESSAGES) != 0)
				printf("WDTR negotiation rejected busfree.\n");
#endif
			FUNC28(ahd, &devinfo,
				      MSG_EXT_WDTR_BUS_8_BIT,
				      AHD_TRANS_CUR|AHD_TRANS_GOAL,
				      /*paused*/TRUE);
			if (scb != NULL) {
				/*
				 * Remove any SCBs in the waiting for
				 * selection queue that may also be for
				 * this target so that command ordering
				 * is preserved.
				 */
				FUNC12(ahd, scb);
				FUNC24(ahd, scb);
			}
			printerror = 0;
		} else if (FUNC25(ahd, AHDMSG_EXT, MSG_EXT_SDTR, FALSE)
			&& ppr_busfree == 0) {
			/*
			 * Negotiation Rejected.  Go-async and
			 * retry command.
			 */
#ifdef AHD_DEBUG
			if ((ahd_debug & AHD_SHOW_MESSAGES) != 0)
				printf("SDTR negotiation rejected busfree.\n");
#endif
			FUNC26(ahd, &devinfo,
					/*period*/0, /*offset*/0,
					/*ppr_options*/0,
					AHD_TRANS_CUR|AHD_TRANS_GOAL,
					/*paused*/TRUE);
			if (scb != NULL) {
				/*
				 * Remove any SCBs in the waiting for
				 * selection queue that may also be for
				 * this target so that command ordering
				 * is preserved.
				 */
				FUNC12(ahd, scb);
				FUNC24(ahd, scb);
			}
			printerror = 0;
		} else if ((ahd->msg_flags & MSG_FLAG_EXPECT_IDE_BUSFREE) != 0
			&& FUNC25(ahd, AHDMSG_1B,
					 MSG_INITIATOR_DET_ERR, TRUE)) {

#ifdef AHD_DEBUG
			if ((ahd_debug & AHD_SHOW_MESSAGES) != 0)
				printf("Expected IDE Busfree\n");
#endif
			printerror = 0;
		} else if ((ahd->msg_flags & MSG_FLAG_EXPECT_QASREJ_BUSFREE)
			&& FUNC25(ahd, AHDMSG_1B,
					MSG_MESSAGE_REJECT, TRUE)) {

#ifdef AHD_DEBUG
			if ((ahd_debug & AHD_SHOW_MESSAGES) != 0)
				printf("Expected QAS Reject Busfree\n");
#endif
			printerror = 0;
		}
	}

	/*
	 * The busfree required flag is honored at the end of
	 * the message phases.  We check it last in case we
	 * had to send some other message that caused a busfree.
	 */
	if (scb != NULL && printerror != 0
	 && (lastphase == P_MESGIN || lastphase == P_MESGOUT)
	 && ((ahd->msg_flags & MSG_FLAG_EXPECT_PPR_BUSFREE) != 0)) {

		FUNC12(ahd, scb);
		FUNC27(scb, CAM_REQUEUE_REQ);
		FUNC13(scb);
		if ((ahd->msg_flags & MSG_FLAG_IU_REQ_CHANGED) != 0) {
			FUNC6(ahd, FUNC3(ahd, scb),
				       FUNC0(ahd, scb),
				       FUNC1(scb), SCB_LIST_NULL,
				       ROLE_INITIATOR, CAM_REQ_ABORTED);
		} else {
#ifdef AHD_DEBUG
			if ((ahd_debug & AHD_SHOW_MESSAGES) != 0)
				printf("PPR Negotiation Busfree.\n");
#endif
			FUNC8(ahd, scb);
		}
		printerror = 0;
	}
	if (printerror != 0) {
		int aborted;

		aborted = 0;
		if (scb != NULL) {
			u_int tag;

			if ((scb->hscb->control & TAG_ENB) != 0)
				tag = FUNC2(scb);
			else
				tag = SCB_LIST_NULL;
			FUNC23(ahd, scb);
			aborted = FUNC6(ahd, target, 'A',
				       FUNC1(scb), tag,
				       ROLE_INITIATOR,
				       CAM_UNEXP_BUSFREE);
		} else {
			/*
			 * We had not fully identified this connection,
			 * so we cannot abort anything.
			 */
			FUNC29("%s: ", FUNC21(ahd));
		}
		FUNC29("Unexpected busfree %s, %d SCBs aborted, "
		       "PRGMCNT == 0x%x\n",
		       FUNC18(lastphase)->phasemsg,
		       aborted,
		       FUNC17(ahd, PRGMCNT));
		FUNC9(ahd);
		if (lastphase != P_BUSFREE)
			FUNC11(ahd, &devinfo);
	}
	/* Always restart the sequencer. */
	return (1);
}