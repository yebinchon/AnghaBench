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
typedef  int u_int ;
struct scb {int flags; TYPE_1__* hscb; } ;
struct ahc_softc {int* msgout_buf; int /*<<< orphan*/  msg_type; scalar_t__ msgout_index; scalar_t__ msgout_len; } ;
struct ahc_devinfo {int target_mask; } ;
struct TYPE_2__ {int control; int tag; int scsiid; } ;

/* Variables and functions */
 int DISCENB ; 
 int ENSELO ; 
 int MK_MESSAGE ; 
 int MSG_ABORT ; 
 int MSG_ABORT_TAG ; 
 int MSG_BUS_DEV_RESET ; 
 int MSG_IDENTIFYFLAG ; 
 int MSG_IDENTIFY_DISCFLAG ; 
 int /*<<< orphan*/  MSG_OUT ; 
 int /*<<< orphan*/  MSG_TYPE_INITIATOR_MSGOUT ; 
 int SCB_ABORT ; 
 int SCB_AUTO_NEGOTIATE ; 
 int /*<<< orphan*/  SCB_CONTROL ; 
 int SCB_DEVICE_RESET ; 
 int FUNC0 (struct scb*) ; 
 int SCB_NEGOTIATE ; 
 int SCB_TAG_TYPE ; 
 int /*<<< orphan*/  SCSISEQ ; 
 int TAG_ENB ; 
 int /*<<< orphan*/  FUNC1 (struct ahc_softc*,struct ahc_devinfo*) ; 
 int FUNC2 (struct ahc_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ahc_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ahc_softc*,struct scb*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 

__attribute__((used)) static void
FUNC7(struct ahc_softc *ahc, struct ahc_devinfo *devinfo,
			   struct scb *scb)
{
	/*
	 * To facilitate adding multiple messages together,
	 * each routine should increment the index and len
	 * variables instead of setting them explicitly.
	 */
	ahc->msgout_index = 0;
	ahc->msgout_len = 0;

	if ((scb->flags & SCB_DEVICE_RESET) == 0
	 && FUNC2(ahc, MSG_OUT) == MSG_IDENTIFYFLAG) {
		u_int identify_msg;

		identify_msg = MSG_IDENTIFYFLAG | FUNC0(scb);
		if ((scb->hscb->control & DISCENB) != 0)
			identify_msg |= MSG_IDENTIFY_DISCFLAG;
		ahc->msgout_buf[ahc->msgout_index++] = identify_msg;
		ahc->msgout_len++;

		if ((scb->hscb->control & TAG_ENB) != 0) {
			ahc->msgout_buf[ahc->msgout_index++] =
			    scb->hscb->control & (TAG_ENB|SCB_TAG_TYPE);
			ahc->msgout_buf[ahc->msgout_index++] = scb->hscb->tag;
			ahc->msgout_len += 2;
		}
	}

	if (scb->flags & SCB_DEVICE_RESET) {
		ahc->msgout_buf[ahc->msgout_index++] = MSG_BUS_DEV_RESET;
		ahc->msgout_len++;
		FUNC4(ahc, scb);
		FUNC6("Bus Device Reset Message Sent\n");
		/*
		 * Clear our selection hardware in advance of
		 * the busfree.  We may have an entry in the waiting
		 * Q for this target, and we don't want to go about
		 * selecting while we handle the busfree and blow it
		 * away.
		 */
		FUNC3(ahc, SCSISEQ, (FUNC2(ahc, SCSISEQ) & ~ENSELO));
	} else if ((scb->flags & SCB_ABORT) != 0) {
		if ((scb->hscb->control & TAG_ENB) != 0)
			ahc->msgout_buf[ahc->msgout_index++] = MSG_ABORT_TAG;
		else
			ahc->msgout_buf[ahc->msgout_index++] = MSG_ABORT;
		ahc->msgout_len++;
		FUNC4(ahc, scb);
		FUNC6("Abort%s Message Sent\n",
		       (scb->hscb->control & TAG_ENB) != 0 ? " Tag" : "");
		/*
		 * Clear our selection hardware in advance of
		 * the busfree.  We may have an entry in the waiting
		 * Q for this target, and we don't want to go about
		 * selecting while we handle the busfree and blow it
		 * away.
		 */
		FUNC3(ahc, SCSISEQ, (FUNC2(ahc, SCSISEQ) & ~ENSELO));
	} else if ((scb->flags & (SCB_AUTO_NEGOTIATE|SCB_NEGOTIATE)) != 0) {
		FUNC1(ahc, devinfo);
	} else {
		FUNC6("ahc_intr: AWAITING_MSG for an SCB that "
		       "does not have a waiting message\n");
		FUNC6("SCSIID = %x, target_mask = %x\n", scb->hscb->scsiid,
		       devinfo->target_mask);
		FUNC5("SCB = %d, SCB Control = %x, MSG_OUT = %x "
		      "SCB flags = %x", scb->hscb->tag, scb->hscb->control,
		      FUNC2(ahc, MSG_OUT), scb->flags);
	}

	/*
	 * Clear the MK_MESSAGE flag from the SCB so we aren't
	 * asked to send this message again.
	 */
	FUNC3(ahc, SCB_CONTROL, FUNC2(ahc, SCB_CONTROL) & ~MK_MESSAGE);
	scb->hscb->control &= ~MK_MESSAGE;
	ahc->msgout_index = 0;
	ahc->msg_type = MSG_TYPE_INITIATOR_MSGOUT;
}