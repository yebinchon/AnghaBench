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
struct scsi_cmnd {int* cmnd; int serial_number; scalar_t__ host_scribble; TYPE_6__* device; } ;
struct hpsa_scsi_dev_t {int /*<<< orphan*/  lun; int /*<<< orphan*/  target; int /*<<< orphan*/  bus; int /*<<< orphan*/  scsi3addr; } ;
struct ctlr_info {int TMFSupportFlags; TYPE_5__* pdev; int /*<<< orphan*/  cmpQ; TYPE_4__* scsi_host; int /*<<< orphan*/  reqQ; } ;
struct TYPE_7__ {int upper; int lower; } ;
struct TYPE_8__ {TYPE_1__ Tag; } ;
struct CommandList {TYPE_3__* err_info; scalar_t__ scsi_cmd; TYPE_2__ Header; } ;
typedef  int /*<<< orphan*/  msg ;
struct TYPE_12__ {int channel; int id; int lun; struct hpsa_scsi_dev_t* hostdata; } ;
struct TYPE_11__ {int /*<<< orphan*/  dev; } ;
struct TYPE_10__ {int host_no; } ;
struct TYPE_9__ {int /*<<< orphan*/  CommandStatus; } ;

/* Variables and functions */
 int ABORT_COMPLETE_WAIT_SECS ; 
 int /*<<< orphan*/  CMD_ABORTED ; 
 int FAILED ; 
 int HPSATMF_LOG_TASK_ABORT ; 
 int HPSATMF_PHYS_TASK_ABORT ; 
 int SUCCESS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct CommandList*) ; 
 struct CommandList* FUNC6 (struct ctlr_info*,struct scsi_cmnd*,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct ctlr_info*,int /*<<< orphan*/ ,struct CommandList*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 struct ctlr_info* FUNC10 (TYPE_6__*) ; 
 scalar_t__ FUNC11 (char*,char*,int,int,...) ; 

__attribute__((used)) static int FUNC12(struct scsi_cmnd *sc)
{

	int i, rc;
	struct ctlr_info *h;
	struct hpsa_scsi_dev_t *dev;
	struct CommandList *abort; /* pointer to command to be aborted */
	struct CommandList *found;
	struct scsi_cmnd *as;	/* ptr to scsi cmd inside aborted command. */
	char msg[256];		/* For debug messaging. */
	int ml = 0;

	/* Find the controller of the command to be aborted */
	h = FUNC10(sc->device);
	if (FUNC0(h == NULL,
			"ABORT REQUEST FAILED, Controller lookup failed.\n"))
		return FAILED;

	/* Check that controller supports some kind of task abort */
	if (!(HPSATMF_PHYS_TASK_ABORT & h->TMFSupportFlags) &&
		!(HPSATMF_LOG_TASK_ABORT & h->TMFSupportFlags))
		return FAILED;

	FUNC8(msg, 0, sizeof(msg));
	ml += FUNC11(msg+ml, "ABORT REQUEST on C%d:B%d:T%d:L%d ",
		h->scsi_host->host_no, sc->device->channel,
		sc->device->id, sc->device->lun);

	/* Find the device of the command to be aborted */
	dev = sc->device->hostdata;
	if (!dev) {
		FUNC2(&h->pdev->dev, "%s FAILED, Device lookup failed.\n",
				msg);
		return FAILED;
	}

	/* Get SCSI command to be aborted */
	abort = (struct CommandList *) sc->host_scribble;
	if (abort == NULL) {
		FUNC2(&h->pdev->dev, "%s FAILED, Command to abort is NULL.\n",
				msg);
		return FAILED;
	}

	ml += FUNC11(msg+ml, "Tag:0x%08x:%08x ",
		abort->Header.Tag.upper, abort->Header.Tag.lower);
	as  = (struct scsi_cmnd *) abort->scsi_cmd;
	if (as != NULL)
		ml += FUNC11(msg+ml, "Command:0x%x SN:0x%lx ",
			as->cmnd[0], as->serial_number);
	FUNC1(&h->pdev->dev, "%s\n", msg);
	FUNC4(&h->pdev->dev, "Abort request on C%d:B%d:T%d:L%d\n",
		h->scsi_host->host_no, dev->bus, dev->target, dev->lun);

	/* Search reqQ to See if command is queued but not submitted,
	 * if so, complete the command with aborted status and remove
	 * it from the reqQ.
	 */
	found = FUNC6(h, sc, &h->reqQ);
	if (found) {
		found->err_info->CommandStatus = CMD_ABORTED;
		FUNC5(found);
		FUNC3(&h->pdev->dev, "%s Request SUCCEEDED (driver queue).\n",
				msg);
		return SUCCESS;
	}

	/* not in reqQ, if also not in cmpQ, must have already completed */
	found = FUNC6(h, sc, &h->cmpQ);
	if (!found)  {
		FUNC1(&h->pdev->dev, "%s Request FAILED (not known to driver).\n",
				msg);
		return SUCCESS;
	}

	/*
	 * Command is in flight, or possibly already completed
	 * by the firmware (but not to the scsi mid layer) but we can't
	 * distinguish which.  Send the abort down.
	 */
	rc = FUNC7(h, dev->scsi3addr, abort);
	if (rc != 0) {
		FUNC1(&h->pdev->dev, "%s Request FAILED.\n", msg);
		FUNC4(&h->pdev->dev, "FAILED abort on device C%d:B%d:T%d:L%d\n",
			h->scsi_host->host_no,
			dev->bus, dev->target, dev->lun);
		return FAILED;
	}
	FUNC3(&h->pdev->dev, "%s REQUEST SUCCEEDED.\n", msg);

	/* If the abort(s) above completed and actually aborted the
	 * command, then the command to be aborted should already be
	 * completed.  If not, wait around a bit more to see if they
	 * manage to complete normally.
	 */
#define ABORT_COMPLETE_WAIT_SECS 30
	for (i = 0; i < ABORT_COMPLETE_WAIT_SECS * 10; i++) {
		found = FUNC6(h, sc, &h->cmpQ);
		if (!found)
			return SUCCESS;
		FUNC9(100);
	}
	FUNC4(&h->pdev->dev, "%s FAILED. Aborted command has not completed after %d seconds.\n",
		msg, ABORT_COMPLETE_WAIT_SECS);
	return FAILED;
}