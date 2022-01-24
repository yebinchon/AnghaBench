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
struct target_control {int js_period; int flags; int /*<<< orphan*/  drv_flags; } ;
struct scsi_ctrl_blk {int target; scalar_t__ opcode; int flags; int next_state; int hastat; int /*<<< orphan*/  srb; scalar_t__ tagmsg; } ;
struct initio_host {int jsstatus0; int phase; int jsint; int scsi_id; scalar_t__ addr; struct target_control* targets; struct scsi_ctrl_blk* active; void* jsstatus1; } ;

/* Variables and functions */
 scalar_t__ AbortCmd ; 
 scalar_t__ BusDevRst ; 
 scalar_t__ ExecSCSI ; 
 int SCF_POLL ; 
 int /*<<< orphan*/  TCF_DRV_EN_TAG ; 
 int TCF_NO_SYNC_NEGO ; 
 int TCF_NO_WDTR ; 
 int TCF_SYNC_DONE ; 
 int TCF_WDTR_DONE ; 
 int TSS_BUS_SERV ; 
 int TSS_DISC_INT ; 
 int TSS_FUNC_COMP ; 
 int TSS_INT_PENDING ; 
 int TSS_PH_MASK ; 
 int TSS_RESEL_INT ; 
 int TSS_SCSIRST_INT ; 
 int TSS_SEL_TIMEOUT ; 
 scalar_t__ TUL_SInt ; 
 scalar_t__ TUL_SPeriod ; 
 scalar_t__ TUL_SScsiId ; 
 scalar_t__ TUL_SStatus0 ; 
 scalar_t__ TUL_SStatus1 ; 
 void* FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (struct initio_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct initio_host*,struct scsi_ctrl_blk*) ; 
 struct scsi_ctrl_blk* FUNC3 (struct initio_host*) ; 
 int FUNC4 (struct initio_host*) ; 
 int /*<<< orphan*/  FUNC5 (struct initio_host*,struct scsi_ctrl_blk*) ; 
 int /*<<< orphan*/  FUNC6 (struct initio_host*,struct scsi_ctrl_blk*) ; 
 int /*<<< orphan*/  FUNC7 (struct initio_host*,struct scsi_ctrl_blk*) ; 
 int /*<<< orphan*/  FUNC8 (struct initio_host*,struct scsi_ctrl_blk*) ; 
 int /*<<< orphan*/  FUNC9 (struct initio_host*,struct scsi_ctrl_blk*) ; 
 int /*<<< orphan*/  FUNC10 (struct initio_host*) ; 
 scalar_t__ FUNC11 (struct initio_host*) ; 
 int /*<<< orphan*/  FUNC12 (struct initio_host*) ; 
 int /*<<< orphan*/  FUNC13 (int,scalar_t__) ; 
 int FUNC14 (struct initio_host*) ; 

__attribute__((used)) static void FUNC15(struct initio_host * host)
{
	struct scsi_ctrl_blk *scb;
	struct target_control *active_tc;

	/* make sure to service interrupt asap */
	if ((host->jsstatus0 = FUNC0(host->addr + TUL_SStatus0)) & TSS_INT_PENDING) {
		host->phase = host->jsstatus0 & TSS_PH_MASK;
		host->jsstatus1 = FUNC0(host->addr + TUL_SStatus1);
		host->jsint = FUNC0(host->addr + TUL_SInt);
		if (host->jsint & TSS_SCSIRST_INT) {	/* SCSI bus reset detected      */
			FUNC12(host);
			return;
		}
		if (host->jsint & TSS_RESEL_INT) {	/* if selected/reselected interrupt */
			if (FUNC11(host) == 0)
				FUNC4(host);
			return;
		}
		if (host->jsint & TSS_SEL_TIMEOUT) {
			FUNC10(host);
			return;
		}
		if (host->jsint & TSS_DISC_INT) {	/* BUS disconnection            */
			FUNC10(host);	/* unexpected bus free or sel timeout */
			return;
		}
		if (host->jsint & (TSS_FUNC_COMP | TSS_BUS_SERV)) {	/* func complete or Bus service */
			if ((scb = host->active) != NULL)
				FUNC4(host);
			return;
		}
	}
	if (host->active != NULL)
		return;

	if ((scb = FUNC3(host)) == NULL)
		return;

	/* program HBA's SCSI ID & target SCSI ID */
	FUNC13((host->scsi_id << 4) | (scb->target & 0x0F),
		host->addr + TUL_SScsiId);
	if (scb->opcode == ExecSCSI) {
		active_tc = &host->targets[scb->target];

		if (scb->tagmsg)
			active_tc->drv_flags |= TCF_DRV_EN_TAG;
		else
			active_tc->drv_flags &= ~TCF_DRV_EN_TAG;

		FUNC13(active_tc->js_period, host->addr + TUL_SPeriod);
		if ((active_tc->flags & (TCF_WDTR_DONE | TCF_NO_WDTR)) == 0) {	/* do wdtr negotiation          */
			FUNC8(host, scb);
		} else {
			if ((active_tc->flags & (TCF_SYNC_DONE | TCF_NO_SYNC_NEGO)) == 0) {	/* do sync negotiation          */
				FUNC8(host, scb);
			} else {
				if (scb->tagmsg)
					FUNC7(host, scb);
				else
					FUNC6(host, scb);
			}
		}
		if (scb->flags & SCF_POLL) {
			while (FUNC14(host) != -1) {
				if (FUNC4(host) == -1)
					break;
			}
		}
	} else if (scb->opcode == BusDevRst) {
		FUNC8(host, scb);
		scb->next_state = 8;
		if (scb->flags & SCF_POLL) {
			while (FUNC14(host) != -1) {
				if (FUNC4(host) == -1)
					break;
			}
		}
	} else if (scb->opcode == AbortCmd) {
		if (FUNC1(host, scb->srb) != 0) {
			FUNC9(host, scb);
			FUNC5(host, scb);
		} else {
			scb->opcode = BusDevRst;
			FUNC8(host, scb);
			scb->next_state = 8;
		}
	} else {
		FUNC9(host, scb);
		scb->hastat = 0x16;	/* bad command */
		FUNC2(host, scb);
	}
	return;
}