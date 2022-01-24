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
struct scsi_cmnd {int result; int* cmnd; scalar_t__ cmd_len; TYPE_2__* device; } ;
struct Scsi_Host {scalar_t__ max_cmd_len; scalar_t__ shost_state; int /*<<< orphan*/  host_lock; TYPE_1__* hostt; } ;
struct TYPE_4__ {scalar_t__ sdev_state; scalar_t__ scsi_level; int lun; struct Scsi_Host* host; int /*<<< orphan*/  iorequest_cnt; } ;
struct TYPE_3__ {int (* queuecommand ) (struct scsi_cmnd*,int /*<<< orphan*/  (*) (struct scsi_cmnd*)) ;int /*<<< orphan*/  lockless; } ;

/* Variables and functions */
 int DID_ABORT ; 
 int DID_NO_CONNECT ; 
 scalar_t__ SCSI_2 ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int SCSI_MLQUEUE_DEVICE_BUSY ; 
 int SCSI_MLQUEUE_HOST_BUSY ; 
 int SCSI_MLQUEUE_TARGET_BUSY ; 
 scalar_t__ SCSI_UNKNOWN ; 
 scalar_t__ SDEV_DEL ; 
 scalar_t__ SHOST_DEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct Scsi_Host*,struct scsi_cmnd*) ; 
 int FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC6 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC7 (struct scsi_cmnd*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,unsigned long) ; 
 int FUNC10 (struct scsi_cmnd*,int /*<<< orphan*/  (*) (struct scsi_cmnd*)) ; 
 int /*<<< orphan*/  FUNC11 (struct scsi_cmnd*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct scsi_cmnd*) ; 
 scalar_t__ FUNC13 (int) ; 

int FUNC14(struct scsi_cmnd *cmd)
{
	struct Scsi_Host *host = cmd->device->host;
	unsigned long flags = 0;
	int rtn = 0;

	FUNC1(&cmd->device->iorequest_cnt);

	/* check if the device is still usable */
	if (FUNC13(cmd->device->sdev_state == SDEV_DEL)) {
		/* in SDEV_DEL we error all commands. DID_NO_CONNECT
		 * returns an immediate error upwards, and signals
		 * that the device is no longer present */
		cmd->result = DID_NO_CONNECT << 16;
		FUNC5(cmd);
		/* return 0 (because the command has been processed) */
		goto out;
	}

	/* Check to see if the scsi lld made this device blocked. */
	if (FUNC13(FUNC4(cmd->device))) {
		/* 
		 * in blocked state, the command is just put back on
		 * the device queue.  The suspend state has already
		 * blocked the queue so future requests should not
		 * occur until the device transitions out of the
		 * suspend state.
		 */

		FUNC7(cmd, SCSI_MLQUEUE_DEVICE_BUSY);

		FUNC0(3, FUNC2("queuecommand : device blocked \n"));

		/*
		 * NOTE: rtn is still zero here because we don't need the
		 * queue to be plugged on return (it's already stopped)
		 */
		goto out;
	}

	/* 
	 * If SCSI-2 or lower, store the LUN value in cmnd.
	 */
	if (cmd->device->scsi_level <= SCSI_2 &&
	    cmd->device->scsi_level != SCSI_UNKNOWN) {
		cmd->cmnd[1] = (cmd->cmnd[1] & 0x1f) |
			       (cmd->device->lun << 5 & 0xe0);
	}

	FUNC6(cmd);

	/*
	 * Before we queue this command, check if the command
	 * length exceeds what the host adapter can handle.
	 */
	if (cmd->cmd_len > cmd->device->host->max_cmd_len) {
		FUNC0(3,
			FUNC2("queuecommand : command too long. "
			       "cdb_size=%d host->max_cmd_len=%d\n",
			       cmd->cmd_len, cmd->device->host->max_cmd_len));
		cmd->result = (DID_ABORT << 16);

		FUNC5(cmd);
		goto out;
	}

	if (!host->hostt->lockless) {
		FUNC8(host->host_lock, flags);
		/*
		 * AK: unlikely race here: for some reason the timer could
		 * expire before the serial number is set up below.
		 *
		 * TODO: kill serial or move to blk layer
		 */
		FUNC3(host, cmd); 
	}

	if (FUNC13(host->shost_state == SHOST_DEL)) {
		cmd->result = (DID_NO_CONNECT << 16);
		FUNC5(cmd);
	} else {
		FUNC12(cmd);
		rtn = host->hostt->queuecommand(cmd, scsi_done);
	}

	if (!host->hostt->lockless)
		FUNC9(host->host_lock, flags);

	if (rtn) {
		FUNC11(cmd, rtn);
		if (rtn != SCSI_MLQUEUE_DEVICE_BUSY &&
		    rtn != SCSI_MLQUEUE_TARGET_BUSY)
			rtn = SCSI_MLQUEUE_HOST_BUSY;

		FUNC7(cmd, rtn);

		FUNC0(3,
		    FUNC2("queuecommand : request rejected\n"));
	}

 out:
	FUNC0(3, FUNC2("leaving scsi_dispatch_cmnd()\n"));
	return rtn;
}