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
struct ahd_softc {int send_msg_perror; int* msgout_buf; void* msg_type; scalar_t__ msgout_index; scalar_t__ msgout_len; int /*<<< orphan*/  msg_flags; } ;
struct ahd_devinfo {int target_mask; } ;
struct TYPE_2__ {int control; int scsiid; } ;

/* Variables and functions */
 int AHD_SHOW_MESSAGES ; 
 int DISCENB ; 
 scalar_t__ HOST_MSG ; 
 int MK_MESSAGE ; 
 int MSG_ABORT ; 
 int MSG_ABORT_TAG ; 
 int MSG_BUS_DEV_RESET ; 
 int /*<<< orphan*/  MSG_FLAG_PACKETIZED ; 
 scalar_t__ MSG_IDENTIFYFLAG ; 
 int MSG_IDENTIFY_DISCFLAG ; 
 int MSG_NOOP ; 
 int /*<<< orphan*/  MSG_OUT ; 
 void* MSG_TYPE_INITIATOR_MSGOUT ; 
 int SCB_ABORT ; 
 int SCB_AUTO_NEGOTIATE ; 
 int /*<<< orphan*/  SCB_CONTROL ; 
 int SCB_DEVICE_RESET ; 
 scalar_t__ FUNC0 (struct scb*) ; 
 int FUNC1 (struct scb*) ; 
 int SCB_NEGOTIATE ; 
 int SCB_PACKETIZED ; 
 int SCB_TAG_TYPE ; 
 int /*<<< orphan*/  SCSISEQ0 ; 
 int TAG_ENB ; 
 int /*<<< orphan*/  FUNC2 (struct ahd_softc*,struct ahd_devinfo*) ; 
 scalar_t__ FUNC3 (struct ahd_softc*) ; 
 int ahd_debug ; 
 scalar_t__ FUNC4 (struct ahd_softc*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct ahd_softc*,int /*<<< orphan*/ ) ; 
 char* FUNC6 (struct ahd_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct ahd_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct ahd_softc*,struct scb*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,int,int,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 

__attribute__((used)) static void
FUNC11(struct ahd_softc *ahd, struct ahd_devinfo *devinfo,
			   struct scb *scb)
{
	/*
	 * To facilitate adding multiple messages together,
	 * each routine should increment the index and len
	 * variables instead of setting them explicitly.
	 */
	ahd->msgout_index = 0;
	ahd->msgout_len = 0;

	if (FUNC3(ahd))
		ahd->msg_flags |= MSG_FLAG_PACKETIZED;

	if (ahd->send_msg_perror
	 && FUNC4(ahd, MSG_OUT) == HOST_MSG) {
		ahd->msgout_buf[ahd->msgout_index++] = ahd->send_msg_perror;
		ahd->msgout_len++;
		ahd->msg_type = MSG_TYPE_INITIATOR_MSGOUT;
#ifdef AHD_DEBUG
		if ((ahd_debug & AHD_SHOW_MESSAGES) != 0)
			printf("Setting up for Parity Error delivery\n");
#endif
		return;
	} else if (scb == NULL) {
		FUNC10("%s: WARNING. No pending message for "
		       "I_T msgin.  Issuing NO-OP\n", FUNC6(ahd));
		ahd->msgout_buf[ahd->msgout_index++] = MSG_NOOP;
		ahd->msgout_len++;
		ahd->msg_type = MSG_TYPE_INITIATOR_MSGOUT;
		return;
	}

	if ((scb->flags & SCB_DEVICE_RESET) == 0
	 && (scb->flags & SCB_PACKETIZED) == 0
	 && FUNC4(ahd, MSG_OUT) == MSG_IDENTIFYFLAG) {
		u_int identify_msg;

		identify_msg = MSG_IDENTIFYFLAG | FUNC0(scb);
		if ((scb->hscb->control & DISCENB) != 0)
			identify_msg |= MSG_IDENTIFY_DISCFLAG;
		ahd->msgout_buf[ahd->msgout_index++] = identify_msg;
		ahd->msgout_len++;

		if ((scb->hscb->control & TAG_ENB) != 0) {
			ahd->msgout_buf[ahd->msgout_index++] =
			    scb->hscb->control & (TAG_ENB|SCB_TAG_TYPE);
			ahd->msgout_buf[ahd->msgout_index++] = FUNC1(scb);
			ahd->msgout_len += 2;
		}
	}

	if (scb->flags & SCB_DEVICE_RESET) {
		ahd->msgout_buf[ahd->msgout_index++] = MSG_BUS_DEV_RESET;
		ahd->msgout_len++;
		FUNC8(ahd, scb);
		FUNC10("Bus Device Reset Message Sent\n");
		/*
		 * Clear our selection hardware in advance of
		 * the busfree.  We may have an entry in the waiting
		 * Q for this target, and we don't want to go about
		 * selecting while we handle the busfree and blow it
		 * away.
		 */
		FUNC7(ahd, SCSISEQ0, 0);
	} else if ((scb->flags & SCB_ABORT) != 0) {

		if ((scb->hscb->control & TAG_ENB) != 0) {
			ahd->msgout_buf[ahd->msgout_index++] = MSG_ABORT_TAG;
		} else {
			ahd->msgout_buf[ahd->msgout_index++] = MSG_ABORT;
		}
		ahd->msgout_len++;
		FUNC8(ahd, scb);
		FUNC10("Abort%s Message Sent\n",
		       (scb->hscb->control & TAG_ENB) != 0 ? " Tag" : "");
		/*
		 * Clear our selection hardware in advance of
		 * the busfree.  We may have an entry in the waiting
		 * Q for this target, and we don't want to go about
		 * selecting while we handle the busfree and blow it
		 * away.
		 */
		FUNC7(ahd, SCSISEQ0, 0);
	} else if ((scb->flags & (SCB_AUTO_NEGOTIATE|SCB_NEGOTIATE)) != 0) {
		FUNC2(ahd, devinfo);
		/*
		 * Clear our selection hardware in advance of potential
		 * PPR IU status change busfree.  We may have an entry in
		 * the waiting Q for this target, and we don't want to go
		 * about selecting while we handle the busfree and blow
		 * it away.
		 */
		FUNC7(ahd, SCSISEQ0, 0);
	} else {
		FUNC10("ahd_intr: AWAITING_MSG for an SCB that "
		       "does not have a waiting message\n");
		FUNC10("SCSIID = %x, target_mask = %x\n", scb->hscb->scsiid,
		       devinfo->target_mask);
		FUNC9("SCB = %d, SCB Control = %x:%x, MSG_OUT = %x "
		      "SCB flags = %x", FUNC1(scb), scb->hscb->control,
		      FUNC5(ahd, SCB_CONTROL), FUNC4(ahd, MSG_OUT),
		      scb->flags);
	}

	/*
	 * Clear the MK_MESSAGE flag from the SCB so we aren't
	 * asked to send this message again.
	 */
	FUNC7(ahd, SCB_CONTROL,
		 FUNC5(ahd, SCB_CONTROL) & ~MK_MESSAGE);
	scb->hscb->control &= ~MK_MESSAGE;
	ahd->msgout_index = 0;
	ahd->msg_type = MSG_TYPE_INITIATOR_MSGOUT;
}