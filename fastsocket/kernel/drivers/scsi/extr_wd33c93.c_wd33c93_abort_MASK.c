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
typedef  int /*<<< orphan*/  wd33c93_regs ;
typedef  int uchar ;
struct scsi_cmnd {int result; TYPE_1__* device; int /*<<< orphan*/ * host_scribble; int /*<<< orphan*/  serial_number; int /*<<< orphan*/  (* scsi_done ) (struct scsi_cmnd*) ;} ;
struct WD33C93_hostdata {scalar_t__ dma; int* busy; scalar_t__ disconnected_Q; int /*<<< orphan*/  state; struct scsi_cmnd* connected; int /*<<< orphan*/  (* dma_stop ) (struct Scsi_Host*,struct scsi_cmnd*,int /*<<< orphan*/ ) ;struct scsi_cmnd* input_Q; int /*<<< orphan*/  regs; } ;
struct Scsi_Host {int /*<<< orphan*/  host_no; int /*<<< orphan*/  irq; scalar_t__ hostdata; } ;
struct TYPE_2__ {size_t id; int lun; struct Scsi_Host* host; } ;

/* Variables and functions */
 int ASR_CIP ; 
 int ASR_DBR ; 
 int ASR_INT ; 
 int CTRL_EDI ; 
 int CTRL_IDI ; 
 int CTRL_POLLED ; 
 int DID_ABORT ; 
 scalar_t__ D_DMA_OFF ; 
 scalar_t__ D_DMA_RUNNING ; 
 int FAILED ; 
 int SUCCESS ; 
 int /*<<< orphan*/  S_UNCONNECTED ; 
 int /*<<< orphan*/  WD_CMD_ABORT ; 
 int /*<<< orphan*/  WD_CMD_DISCONNECT ; 
 int /*<<< orphan*/  WD_CONTROL ; 
 int /*<<< orphan*/  WD_DATA ; 
 int /*<<< orphan*/  WD_SCSI_STATUS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC7 (struct Scsi_Host*,struct scsi_cmnd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC9 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC12(struct scsi_cmnd * cmd)
{
	struct Scsi_Host *instance;
	struct WD33C93_hostdata *hostdata;
	wd33c93_regs regs;
	struct scsi_cmnd *tmp, *prev;

	FUNC0(cmd->device->host->irq);

	instance = cmd->device->host;
	hostdata = (struct WD33C93_hostdata *) instance->hostdata;
	regs = hostdata->regs;

/*
 * Case 1 : If the command hasn't been issued yet, we simply remove it
 *     from the input_Q.
 */

	tmp = (struct scsi_cmnd *) hostdata->input_Q;
	prev = NULL;
	while (tmp) {
		if (tmp == cmd) {
			if (prev)
				prev->host_scribble = cmd->host_scribble;
			else
				hostdata->input_Q =
				    (struct scsi_cmnd *) cmd->host_scribble;
			cmd->host_scribble = NULL;
			cmd->result = DID_ABORT << 16;
			FUNC2
			    ("scsi%d: Abort - removing command %ld from input_Q. ",
			     instance->host_no, cmd->serial_number);
			FUNC1(cmd->device->host->irq);
			cmd->scsi_done(cmd);
			return SUCCESS;
		}
		prev = tmp;
		tmp = (struct scsi_cmnd *) tmp->host_scribble;
	}

/*
 * Case 2 : If the command is connected, we're going to fail the abort
 *     and let the high level SCSI driver retry at a later time or
 *     issue a reset.
 *
 *     Timeouts, and therefore aborted commands, will be highly unlikely
 *     and handling them cleanly in this situation would make the common
 *     case of noresets less efficient, and would pollute our code.  So,
 *     we fail.
 */

	if (hostdata->connected == cmd) {
		uchar sr, asr;
		unsigned long timeout;

		FUNC2("scsi%d: Aborting connected command %ld - ",
		       instance->host_no, cmd->serial_number);

		FUNC2("stopping DMA - ");
		if (hostdata->dma == D_DMA_RUNNING) {
			hostdata->dma_stop(instance, cmd, 0);
			hostdata->dma = D_DMA_OFF;
		}

		FUNC2("sending wd33c93 ABORT command - ");
		FUNC10(regs, WD_CONTROL,
			      CTRL_IDI | CTRL_EDI | CTRL_POLLED);
		FUNC11(regs, WD_CMD_ABORT);

/* Now we have to attempt to flush out the FIFO... */

		FUNC2("flushing fifo - ");
		timeout = 1000000;
		do {
			asr = FUNC3(regs);
			if (asr & ASR_DBR)
				FUNC4(regs, WD_DATA);
		} while (!(asr & ASR_INT) && timeout-- > 0);
		sr = FUNC4(regs, WD_SCSI_STATUS);
		FUNC2
		    ("asr=%02x, sr=%02x, %ld bytes un-transferred (timeout=%ld) - ",
		     asr, sr, FUNC5(regs), timeout);

		/*
		 * Abort command processed.
		 * Still connected.
		 * We must disconnect.
		 */

		FUNC2("sending wd33c93 DISCONNECT command - ");
		FUNC11(regs, WD_CMD_DISCONNECT);

		timeout = 1000000;
		asr = FUNC3(regs);
		while ((asr & ASR_CIP) && timeout-- > 0)
			asr = FUNC3(regs);
		sr = FUNC4(regs, WD_SCSI_STATUS);
		FUNC2("asr=%02x, sr=%02x.", asr, sr);

		hostdata->busy[cmd->device->id] &= ~(1 << cmd->device->lun);
		hostdata->connected = NULL;
		hostdata->state = S_UNCONNECTED;
		cmd->result = DID_ABORT << 16;

/*      sti();*/
		FUNC9(instance);

		FUNC1(cmd->device->host->irq);
		cmd->scsi_done(cmd);
		return SUCCESS;
	}

/*
 * Case 3: If the command is currently disconnected from the bus,
 * we're not going to expend much effort here: Let's just return
 * an ABORT_SNOOZE and hope for the best...
 */

	tmp = (struct scsi_cmnd *) hostdata->disconnected_Q;
	while (tmp) {
		if (tmp == cmd) {
			FUNC2
			    ("scsi%d: Abort - command %ld found on disconnected_Q - ",
			     instance->host_no, cmd->serial_number);
			FUNC2("Abort SNOOZE. ");
			FUNC1(cmd->device->host->irq);
			return FAILED;
		}
		tmp = (struct scsi_cmnd *) tmp->host_scribble;
	}

/*
 * Case 4 : If we reached this point, the command was not found in any of
 *     the queues.
 *
 * We probably reached this point because of an unlikely race condition
 * between the command completing successfully and the abortion code,
 * so we won't panic, but we will notify the user in case something really
 * broke.
 */

/*   sti();*/
	FUNC9(instance);

	FUNC1(cmd->device->host->irq);
	FUNC2("scsi%d: warning : SCSI command probably completed successfully"
	       "         before abortion. ", instance->host_no);
	return FAILED;
}