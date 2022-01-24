#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  scalar_t__ u_int ;
struct scb {int flags; } ;
struct ahc_softc {int flags; int /*<<< orphan*/  pending_scbs; TYPE_1__* scb_data; } ;
typedef  int /*<<< orphan*/  role_t ;
typedef  scalar_t__ cam_status ;
struct TYPE_2__ {int maxhscbs; } ;

/* Variables and functions */
 int AHC_NUM_LUNS ; 
 int AHC_SCB_BTT ; 
 scalar_t__ FUNC0 (int,int) ; 
 int CAM_LUN_WILDCARD ; 
 int /*<<< orphan*/  CAM_REQUEUE_REQ ; 
 scalar_t__ CAM_REQ_CMP ; 
 scalar_t__ CAM_REQ_INPROG ; 
 int CAM_TARGET_WILDCARD ; 
 int /*<<< orphan*/  FALSE ; 
 struct scb* FUNC1 (int /*<<< orphan*/ *) ; 
 struct scb* FUNC2 (struct scb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ROLE_TARGET ; 
 int /*<<< orphan*/  SCBPTR ; 
 int SCB_ACTIVE ; 
 scalar_t__ SCB_LIST_NULL ; 
 int /*<<< orphan*/  SCB_TAG ; 
 int /*<<< orphan*/  SEARCH_COMPLETE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC3 (struct ahc_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct ahc_softc*,struct scb*) ; 
 int /*<<< orphan*/  FUNC5 (struct scb*) ; 
 int /*<<< orphan*/  FUNC6 (struct ahc_softc*) ; 
 scalar_t__ FUNC7 (struct scb*) ; 
 scalar_t__ FUNC8 (struct ahc_softc*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct ahc_softc*,scalar_t__) ; 
 struct scb* FUNC10 (struct ahc_softc*,scalar_t__) ; 
 scalar_t__ FUNC11 (struct ahc_softc*,struct scb*,int,char,int,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct ahc_softc*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (struct ahc_softc*,int,char,int,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct ahc_softc*) ; 
 int /*<<< orphan*/  FUNC15 (struct ahc_softc*,int,char,int,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC16 (struct ahc_softc*,int,char,int,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct scb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct ahc_softc*,scalar_t__) ; 
 int /*<<< orphan*/  pending_links ; 
 int /*<<< orphan*/  FUNC19 (char*) ; 

__attribute__((used)) static int
FUNC20(struct ahc_softc *ahc, int target, char channel,
	       int lun, u_int tag, role_t role, uint32_t status)
{
	struct	scb *scbp;
	struct	scb *scbp_next;
	u_int	active_scb;
	int	i, j;
	int	maxtarget;
	int	minlun;
	int	maxlun;

	int	found;

	/*
	 * Don't attempt to run any queued untagged transactions
	 * until we are done with the abort process.
	 */
	FUNC6(ahc);

	/* restore this when we're done */
	active_scb = FUNC8(ahc, SCBPTR);

	found = FUNC16(ahc, target, channel, lun, SCB_LIST_NULL,
				   role, CAM_REQUEUE_REQ, SEARCH_COMPLETE);

	/*
	 * Clean out the busy target table for any untagged commands.
	 */
	i = 0;
	maxtarget = 16;
	if (target != CAM_TARGET_WILDCARD) {
		i = target;
		if (channel == 'B')
			i += 8;
		maxtarget = i + 1;
	}

	if (lun == CAM_LUN_WILDCARD) {

		/*
		 * Unless we are using an SCB based
		 * busy targets table, there is only
		 * one table entry for all luns of
		 * a target.
		 */
		minlun = 0;
		maxlun = 1;
		if ((ahc->flags & AHC_SCB_BTT) != 0)
			maxlun = AHC_NUM_LUNS;
	} else {
		minlun = lun;
		maxlun = lun + 1;
	}

	if (role != ROLE_TARGET) {
		for (;i < maxtarget; i++) {
			for (j = minlun;j < maxlun; j++) {
				u_int scbid;
				u_int tcl;

				tcl = FUNC0(i << 4, j);
				scbid = FUNC9(ahc, tcl);
				scbp = FUNC10(ahc, scbid);
				if (scbp == NULL
				 || FUNC11(ahc, scbp, target, channel,
						  lun, tag, role) == 0)
					continue;
				FUNC18(ahc, FUNC0(i << 4, j));
			}
		}

		/*
		 * Go through the disconnected list and remove any entries we
		 * have queued for completion, 0'ing their control byte too.
		 * We save the active SCB and restore it ourselves, so there
		 * is no reason for this search to restore it too.
		 */
		FUNC15(ahc, target, channel, lun, tag,
				     /*stop_on_first*/FALSE, /*remove*/TRUE,
				     /*save_state*/FALSE);
	}

	/*
	 * Go through the hardware SCB array looking for commands that
	 * were active but not on any list.  In some cases, these remnants
	 * might not still have mappings in the scbindex array (e.g. unexpected
	 * bus free with the same scb queued for an abort).  Don't hold this
	 * against them.
	 */
	for (i = 0; i < ahc->scb_data->maxhscbs; i++) {
		u_int scbid;

		FUNC12(ahc, SCBPTR, i);
		scbid = FUNC8(ahc, SCB_TAG);
		scbp = FUNC10(ahc, scbid);
		if ((scbp == NULL && scbid != SCB_LIST_NULL)
		 || (scbp != NULL
		  && FUNC11(ahc, scbp, target, channel, lun, tag, role)))
			FUNC3(ahc);
	}

	/*
	 * Go through the pending CCB list and look for
	 * commands for this target that are still active.
	 * These are other tagged commands that were
	 * disconnected when the reset occurred.
	 */
	scbp_next = FUNC1(&ahc->pending_scbs);
	while (scbp_next != NULL) {
		scbp = scbp_next;
		scbp_next = FUNC2(scbp, pending_links);
		if (FUNC11(ahc, scbp, target, channel, lun, tag, role)) {
			cam_status ostat;

			ostat = FUNC7(scbp);
			if (ostat == CAM_REQ_INPROG)
				FUNC17(scbp, status);
			if (FUNC7(scbp) != CAM_REQ_CMP)
				FUNC5(scbp);
			if ((scbp->flags & SCB_ACTIVE) == 0)
				FUNC19("Inactive SCB on pending list\n");
			FUNC4(ahc, scbp);
			found++;
		}
	}
	FUNC12(ahc, SCBPTR, active_scb);
	FUNC13(ahc, target, channel, lun, tag, role, status);
	FUNC14(ahc);
	return found;
}