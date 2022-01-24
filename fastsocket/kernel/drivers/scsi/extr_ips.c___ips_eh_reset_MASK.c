#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_38__   TYPE_9__ ;
typedef  struct TYPE_37__   TYPE_8__ ;
typedef  struct TYPE_36__   TYPE_7__ ;
typedef  struct TYPE_35__   TYPE_6__ ;
typedef  struct TYPE_34__   TYPE_5__ ;
typedef  struct TYPE_33__   TYPE_4__ ;
typedef  struct TYPE_32__   TYPE_3__ ;
typedef  struct TYPE_31__   TYPE_2__ ;
typedef  struct TYPE_30__   TYPE_1__ ;
typedef  struct TYPE_29__   TYPE_17__ ;
typedef  struct TYPE_28__   TYPE_10__ ;

/* Type definitions */
struct timeval {int /*<<< orphan*/  tv_sec; } ;
struct scsi_cmnd {int result; int /*<<< orphan*/  (* scsi_done ) (struct scsi_cmnd*) ;TYPE_2__* device; } ;
struct TYPE_32__ {scalar_t__ reserved4; scalar_t__ reserved3; scalar_t__ reserved2; scalar_t__ reserved; int /*<<< orphan*/  state; int /*<<< orphan*/  command_id; void* op_code; } ;
struct TYPE_33__ {TYPE_3__ flush_cache; } ;
struct TYPE_36__ {TYPE_10__* scsi_cmd; TYPE_4__ cmd; void** cdb; int /*<<< orphan*/  timeout; } ;
typedef  TYPE_7__ ips_scb_t ;
struct TYPE_34__ {int (* reset ) (TYPE_8__*) ;} ;
struct TYPE_29__ {TYPE_9__* head; } ;
struct TYPE_37__ {scalar_t__ ioctl_reset; int max_cmds; int nbus; scalar_t__ num_ioctl; scalar_t__* dcdb_active; int /*<<< orphan*/  scb_activelist; int /*<<< orphan*/  host_num; int /*<<< orphan*/  reset_count; int /*<<< orphan*/  last_ffdc; TYPE_6__* subsys; void* active; int /*<<< orphan*/  scb_waitlist; int /*<<< orphan*/  pcidev; TYPE_5__ func; TYPE_7__* scbs; TYPE_17__ copp_waitlist; } ;
typedef  TYPE_8__ ips_ha_t ;
struct TYPE_38__ {struct TYPE_38__* next; struct scsi_cmnd* scsi_cmd; } ;
typedef  TYPE_9__ ips_copp_wait_item_t ;
struct TYPE_35__ {int /*<<< orphan*/ * param; } ;
struct TYPE_31__ {TYPE_1__* host; } ;
struct TYPE_30__ {scalar_t__ hostdata; } ;
struct TYPE_28__ {int result; int /*<<< orphan*/  (* scsi_done ) (TYPE_10__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int DID_ERROR ; 
 int DID_RESET ; 
 int FAILED ; 
 void* FALSE ; 
 void* IPS_CMD_FLUSH ; 
 int /*<<< orphan*/  FUNC2 (TYPE_8__*,TYPE_7__*) ; 
 int /*<<< orphan*/  IPS_INTR_IORL ; 
 int /*<<< orphan*/  IPS_NORM_STATE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int IPS_SUCCESS ; 
 int /*<<< orphan*/  KERN_NOTICE ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int SUCCESS ; 
 int /*<<< orphan*/  FUNC5 (struct timeval*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_8__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ips_cmd_timeout ; 
 int /*<<< orphan*/  FUNC7 (TYPE_8__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_8__*,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_8__*,TYPE_7__*) ; 
 int /*<<< orphan*/  ips_name ; 
 int /*<<< orphan*/  FUNC10 (TYPE_8__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_17__*,TYPE_9__*) ; 
 TYPE_7__* FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,struct scsi_cmnd*) ; 
 struct scsi_cmnd* FUNC14 (int /*<<< orphan*/ *) ; 
 int FUNC15 (TYPE_8__*,TYPE_7__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC16 (int /*<<< orphan*/ ) ; 
 int FUNC17 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC19 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC21 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_10__*) ; 

__attribute__((used)) static int FUNC23(struct scsi_cmnd *SC)
{
	int ret;
	int i;
	ips_ha_t *ha;
	ips_scb_t *scb;
	ips_copp_wait_item_t *item;

	FUNC4("ips_eh_reset", 1);

#ifdef NO_IPS_RESET
	return (FAILED);
#else

	if (!SC) {
		FUNC0(1, "Reset called with NULL scsi command");

		return (FAILED);
	}

	ha = (ips_ha_t *) SC->device->host->hostdata;

	if (!ha) {
		FUNC0(1, "Reset called with NULL ha struct");

		return (FAILED);
	}

	if (!ha->active)
		return (FAILED);

	/* See if the command is on the copp queue */
	item = ha->copp_waitlist.head;
	while ((item) && (item->scsi_cmd != SC))
		item = item->next;

	if (item) {
		/* Found it */
		FUNC11(&ha->copp_waitlist, item);
		return (SUCCESS);
	}

	/* See if the command is on the wait queue */
	if (FUNC13(&ha->scb_waitlist, SC)) {
		/* command not sent yet */
		return (SUCCESS);
	}

	/* An explanation for the casual observer:                              */
	/* Part of the function of a RAID controller is automatic error         */
	/* detection and recovery.  As such, the only problem that physically   */
	/* resetting an adapter will ever fix is when, for some reason,         */
	/* the driver is not successfully communicating with the adapter.       */
	/* Therefore, we will attempt to flush this adapter.  If that succeeds, */
	/* then there's no real purpose in a physical reset. This will complete */
	/* much faster and avoids any problems that might be caused by a        */
	/* physical reset ( such as having to fail all the outstanding I/O's ). */

	if (ha->ioctl_reset == 0) {	/* IF Not an IOCTL Requested Reset */
		scb = &ha->scbs[ha->max_cmds - 1];

		FUNC9(ha, scb);

		scb->timeout = ips_cmd_timeout;
		scb->cdb[0] = IPS_CMD_FLUSH;

		scb->cmd.flush_cache.op_code = IPS_CMD_FLUSH;
		scb->cmd.flush_cache.command_id = FUNC2(ha, scb);
		scb->cmd.flush_cache.state = IPS_NORM_STATE;
		scb->cmd.flush_cache.reserved = 0;
		scb->cmd.flush_cache.reserved2 = 0;
		scb->cmd.flush_cache.reserved3 = 0;
		scb->cmd.flush_cache.reserved4 = 0;

		/* Attempt the flush command */
		ret = FUNC15(ha, scb, ips_cmd_timeout, IPS_INTR_IORL);
		if (ret == IPS_SUCCESS) {
			FUNC3(KERN_NOTICE, ha->pcidev,
				   "Reset Request - Flushed Cache\n");
			return (SUCCESS);
		}
	}

	/* Either we can't communicate with the adapter or it's an IOCTL request */
	/* from a utility.  A physical reset is needed at this point.            */

	ha->ioctl_reset = 0;	/* Reset the IOCTL Requested Reset Flag */

	/*
	 * command must have already been sent
	 * reset the controller
	 */
	FUNC3(KERN_NOTICE, ha->pcidev, "Resetting controller.\n");
	ret = (*ha->func.reset) (ha);

	if (!ret) {
		struct scsi_cmnd *scsi_cmd;

		FUNC3(KERN_NOTICE, ha->pcidev,
			   "Controller reset failed - controller now offline.\n");

		/* Now fail all of the active commands */
		FUNC1(1, "(%s%d) Failing active commands",
			  ips_name, ha->host_num);

		while ((scb = FUNC12(&ha->scb_activelist))) {
			scb->scsi_cmd->result = DID_ERROR << 16;
			scb->scsi_cmd->scsi_done(scb->scsi_cmd);
			FUNC8(ha, scb);
		}

		/* Now fail all of the pending commands */
		FUNC1(1, "(%s%d) Failing pending commands",
			  ips_name, ha->host_num);

		while ((scsi_cmd = FUNC14(&ha->scb_waitlist))) {
			scsi_cmd->result = DID_ERROR;
			scsi_cmd->scsi_done(scsi_cmd);
		}

		ha->active = FALSE;
		return (FAILED);
	}

	if (!FUNC6(ha, IPS_INTR_IORL)) {
		struct scsi_cmnd *scsi_cmd;

		FUNC3(KERN_NOTICE, ha->pcidev,
			   "Controller reset failed - controller now offline.\n");

		/* Now fail all of the active commands */
		FUNC1(1, "(%s%d) Failing active commands",
			  ips_name, ha->host_num);

		while ((scb = FUNC12(&ha->scb_activelist))) {
			scb->scsi_cmd->result = DID_ERROR << 16;
			scb->scsi_cmd->scsi_done(scb->scsi_cmd);
			FUNC8(ha, scb);
		}

		/* Now fail all of the pending commands */
		FUNC1(1, "(%s%d) Failing pending commands",
			  ips_name, ha->host_num);

		while ((scsi_cmd = FUNC14(&ha->scb_waitlist))) {
			scsi_cmd->result = DID_ERROR << 16;
			scsi_cmd->scsi_done(scsi_cmd);
		}

		ha->active = FALSE;
		return (FAILED);
	}

	/* FFDC */
	if (FUNC16(ha->subsys->param[3]) & 0x300000) {
		struct timeval tv;

		FUNC5(&tv);
		ha->last_ffdc = tv.tv_sec;
		ha->reset_count++;
		FUNC7(ha, IPS_INTR_IORL);
	}

	/* Now fail all of the active commands */
	FUNC1(1, "(%s%d) Failing active commands", ips_name, ha->host_num);

	while ((scb = FUNC12(&ha->scb_activelist))) {
		scb->scsi_cmd->result = DID_RESET << 16;
		scb->scsi_cmd->scsi_done(scb->scsi_cmd);
		FUNC8(ha, scb);
	}

	/* Reset DCDB active command bits */
	for (i = 1; i < ha->nbus; i++)
		ha->dcdb_active[i - 1] = 0;

	/* Reset the number of active IOCTLs */
	ha->num_ioctl = 0;

	FUNC10(ha, IPS_INTR_IORL);

	return (SUCCESS);
#endif				/* NO_IPS_RESET */

}