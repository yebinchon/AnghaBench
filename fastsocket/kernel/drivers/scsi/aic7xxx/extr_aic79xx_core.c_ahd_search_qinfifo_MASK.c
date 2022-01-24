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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int u_int ;
struct scb {int flags; } ;
struct TYPE_4__ {int numscbs; } ;
struct ahd_softc {int qinfifonext; int* qinfifo; TYPE_2__ scb_data; TYPE_1__* next_queued_hscb; } ;
typedef  int /*<<< orphan*/  role_t ;
typedef  int ahd_search_action ;
typedef  int /*<<< orphan*/  ahd_mode_state ;
struct TYPE_3__ {int /*<<< orphan*/  hscb_busaddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  AHD_MODE_CCHAN ; 
 int /*<<< orphan*/  AHD_MODE_SCSI ; 
 int AHD_NUM_TARGETS ; 
 int FUNC0 (int) ; 
 int CAM_LUN_WILDCARD ; 
 int CCARREN ; 
 int /*<<< orphan*/  CCSCBCTL ; 
 int CCSCBDIR ; 
 int CCSCBEN ; 
 int CMDS_PENDING ; 
 int MK_MESSAGE_SCB ; 
 int /*<<< orphan*/  NEXT_QUEUED_SCB_ADDR ; 
 int PENDING_MK_MESSAGE ; 
 int /*<<< orphan*/  ROLE_UNKNOWN ; 
 scalar_t__ FUNC1 (int) ; 
 int SCB_ACTIVE ; 
 int FUNC2 (struct scb*) ; 
 int FUNC3 (struct ahd_softc*,struct scb*) ; 
 int SCB_LIST_NULL ; 
 int /*<<< orphan*/  SCB_NEXT2 ; 
#define  SEARCH_COMPLETE 131 
#define  SEARCH_COUNT 130 
#define  SEARCH_PRINT 129 
#define  SEARCH_REMOVE 128 
 int /*<<< orphan*/  SEQ_FLAGS2 ; 
 int /*<<< orphan*/  WAITING_SCB_TAILS ; 
 int WAITING_TID_HEAD ; 
 int /*<<< orphan*/  FUNC4 (struct ahd_softc*,struct scb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ahd_softc*) ; 
 int FUNC6 (struct ahd_softc*) ; 
 int FUNC7 (struct ahd_softc*) ; 
 int FUNC8 (struct ahd_softc*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct ahd_softc*,int) ; 
 int FUNC10 (struct ahd_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 struct scb* FUNC12 (struct ahd_softc*,int) ; 
 scalar_t__ FUNC13 (struct ahd_softc*,struct scb*,int,char,int,int,int /*<<< orphan*/ ) ; 
 char* FUNC14 (struct ahd_softc*) ; 
 int /*<<< orphan*/  FUNC15 (struct ahd_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (struct ahd_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct ahd_softc*,int,int) ; 
 int /*<<< orphan*/  FUNC18 (struct ahd_softc*,struct scb*,struct scb*) ; 
 int /*<<< orphan*/  FUNC19 (struct ahd_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct ahd_softc*) ; 
 scalar_t__ FUNC21 (struct ahd_softc*,int,char,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*,int*,int) ; 
 int /*<<< orphan*/  FUNC22 (struct ahd_softc*,int) ; 
 int /*<<< orphan*/  FUNC23 (struct ahd_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (struct ahd_softc*,int) ; 
 int /*<<< orphan*/  FUNC25 (struct ahd_softc*,int,int,int) ; 
 int /*<<< orphan*/  FUNC26 (char*) ; 
 int /*<<< orphan*/  FUNC27 (char*,...) ; 

int
FUNC28(struct ahd_softc *ahd, int target, char channel,
		   int lun, u_int tag, role_t role, uint32_t status,
		   ahd_search_action action)
{
	struct scb	*scb;
	struct scb	*mk_msg_scb;
	struct scb	*prev_scb;
	ahd_mode_state	 saved_modes;
	u_int		 qinstart;
	u_int		 qinpos;
	u_int		 qintail;
	u_int		 tid_next;
	u_int		 tid_prev;
	u_int		 scbid;
	u_int		 seq_flags2;
	u_int		 savedscbptr;
	uint32_t	 busaddr;
	int		 found;
	int		 targets;

	/* Must be in CCHAN mode */
	saved_modes = FUNC20(ahd);
	FUNC23(ahd, AHD_MODE_CCHAN, AHD_MODE_CCHAN);

	/*
	 * Halt any pending SCB DMA.  The sequencer will reinitiate
	 * this dma if the qinfifo is not empty once we unpause.
	 */
	if ((FUNC8(ahd, CCSCBCTL) & (CCARREN|CCSCBEN|CCSCBDIR))
	 == (CCARREN|CCSCBEN|CCSCBDIR)) {
		FUNC15(ahd, CCSCBCTL,
			 FUNC8(ahd, CCSCBCTL) & ~(CCARREN|CCSCBEN));
		while ((FUNC8(ahd, CCSCBCTL) & (CCARREN|CCSCBEN)) != 0)
			;
	}
	/* Determine sequencer's position in the qinfifo. */
	qintail = FUNC0(ahd->qinfifonext);
	qinstart = FUNC7(ahd);
	qinpos = FUNC0(qinstart);
	found = 0;
	prev_scb = NULL;

	if (action == SEARCH_PRINT) {
		FUNC27("qinstart = %d qinfifonext = %d\nQINFIFO:",
		       qinstart, ahd->qinfifonext);
	}

	/*
	 * Start with an empty queue.  Entries that are not chosen
	 * for removal will be re-added to the queue as we go.
	 */
	ahd->qinfifonext = qinstart;
	busaddr = FUNC11(ahd->next_queued_hscb->hscb_busaddr);
	FUNC16(ahd, NEXT_QUEUED_SCB_ADDR, busaddr);

	while (qinpos != qintail) {
		scb = FUNC12(ahd, ahd->qinfifo[qinpos]);
		if (scb == NULL) {
			FUNC27("qinpos = %d, SCB index = %d\n",
				qinpos, ahd->qinfifo[qinpos]);
			FUNC26("Loop 1\n");
		}

		if (FUNC13(ahd, scb, target, channel, lun, tag, role)) {
			/*
			 * We found an scb that needs to be acted on.
			 */
			found++;
			switch (action) {
			case SEARCH_COMPLETE:
				if ((scb->flags & SCB_ACTIVE) == 0)
					FUNC27("Inactive SCB in qinfifo\n");
				FUNC4(ahd, scb, status);
				/* FALLTHROUGH */
			case SEARCH_REMOVE:
				break;
			case SEARCH_PRINT:
				FUNC27(" 0x%x", ahd->qinfifo[qinpos]);
				/* FALLTHROUGH */
			case SEARCH_COUNT:
				FUNC18(ahd, prev_scb, scb);
				prev_scb = scb;
				break;
			}
		} else {
			FUNC18(ahd, prev_scb, scb);
			prev_scb = scb;
		}
		qinpos = FUNC0(qinpos+1);
	}

	FUNC22(ahd, ahd->qinfifonext);

	if (action == SEARCH_PRINT)
		FUNC27("\nWAITING_TID_QUEUES:\n");

	/*
	 * Search waiting for selection lists.  We traverse the
	 * list of "their ids" waiting for selection and, if
	 * appropriate, traverse the SCBs of each "their id"
	 * looking for matches.
	 */
	FUNC23(ahd, AHD_MODE_SCSI, AHD_MODE_SCSI);
	seq_flags2 = FUNC8(ahd, SEQ_FLAGS2);
	if ((seq_flags2 & PENDING_MK_MESSAGE) != 0) {
		scbid = FUNC9(ahd, MK_MESSAGE_SCB);
		mk_msg_scb = FUNC12(ahd, scbid);
	} else
		mk_msg_scb = NULL;
	savedscbptr = FUNC6(ahd);
	tid_next = FUNC9(ahd, WAITING_TID_HEAD);
	tid_prev = SCB_LIST_NULL;
	targets = 0;
	for (scbid = tid_next; !FUNC1(scbid); scbid = tid_next) {
		u_int tid_head;
		u_int tid_tail;

		targets++;
		if (targets > AHD_NUM_TARGETS)
			FUNC26("TID LIST LOOP");

		if (scbid >= ahd->scb_data.numscbs) {
			FUNC27("%s: Waiting TID List inconsistency. "
			       "SCB index == 0x%x, yet numscbs == 0x%x.",
			       FUNC14(ahd), scbid, ahd->scb_data.numscbs);
			FUNC5(ahd);
			FUNC26("for safety");
		}
		scb = FUNC12(ahd, scbid);
		if (scb == NULL) {
			FUNC27("%s: SCB = 0x%x Not Active!\n",
			       FUNC14(ahd), scbid);
			FUNC26("Waiting TID List traversal\n");
		}
		FUNC24(ahd, scbid);
		tid_next = FUNC10(ahd, SCB_NEXT2);
		if (FUNC13(ahd, scb, target, channel, CAM_LUN_WILDCARD,
				  SCB_LIST_NULL, ROLE_UNKNOWN) == 0) {
			tid_prev = scbid;
			continue;
		}

		/*
		 * We found a list of scbs that needs to be searched.
		 */
		if (action == SEARCH_PRINT)
			FUNC27("       %d ( ", FUNC3(ahd, scb));
		tid_head = scbid;
		found += FUNC21(ahd, target, channel,
					     lun, tag, role, status,
					     action, &tid_head, &tid_tail,
					     FUNC3(ahd, scb));
		/*
		 * Check any MK_MESSAGE SCB that is still waiting to
		 * enter this target's waiting for selection queue.
		 */
		if (mk_msg_scb != NULL
		 && FUNC13(ahd, mk_msg_scb, target, channel,
				  lun, tag, role)) {

			/*
			 * We found an scb that needs to be acted on.
			 */
			found++;
			switch (action) {
			case SEARCH_COMPLETE:
				if ((mk_msg_scb->flags & SCB_ACTIVE) == 0)
					FUNC27("Inactive SCB pending MK_MSG\n");
				FUNC4(ahd, mk_msg_scb, status);
				/* FALLTHROUGH */
			case SEARCH_REMOVE:
			{
				u_int tail_offset;

				FUNC27("Removing MK_MSG scb\n");

				/*
				 * Reset our tail to the tail of the
				 * main per-target list.
				 */
				tail_offset = WAITING_SCB_TAILS
				    + (2 * FUNC3(ahd, mk_msg_scb));
				FUNC17(ahd, tail_offset, tid_tail);

				seq_flags2 &= ~PENDING_MK_MESSAGE;
				FUNC15(ahd, SEQ_FLAGS2, seq_flags2);
				FUNC17(ahd, CMDS_PENDING,
					 FUNC9(ahd, CMDS_PENDING)-1);
				mk_msg_scb = NULL;
				break;
			}
			case SEARCH_PRINT:
				FUNC27(" 0x%x", FUNC2(scb));
				/* FALLTHROUGH */
			case SEARCH_COUNT:
				break;
			}
		}

		if (mk_msg_scb != NULL
		 && FUNC1(tid_head)
		 && FUNC13(ahd, scb, target, channel, CAM_LUN_WILDCARD,
				  SCB_LIST_NULL, ROLE_UNKNOWN)) {

			/*
			 * When removing the last SCB for a target
			 * queue with a pending MK_MESSAGE scb, we
			 * must queue the MK_MESSAGE scb.
			 */
			FUNC27("Queueing mk_msg_scb\n");
			tid_head = FUNC9(ahd, MK_MESSAGE_SCB);
			seq_flags2 &= ~PENDING_MK_MESSAGE;
			FUNC15(ahd, SEQ_FLAGS2, seq_flags2);
			mk_msg_scb = NULL;
		}
		if (tid_head != scbid)
			FUNC25(ahd, tid_prev, tid_head, tid_next);
		if (!FUNC1(tid_head))
			tid_prev = tid_head;
		if (action == SEARCH_PRINT)
			FUNC27(")\n");
	}

	/* Restore saved state. */
	FUNC24(ahd, savedscbptr);
	FUNC19(ahd, saved_modes);
	return (found);
}