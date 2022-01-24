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
typedef  size_t u_int ;
struct scsi_cmnd {size_t cmd_len; int* cmnd; TYPE_6__* device; } ;
struct scb {int flags; TYPE_4__* hscb; TYPE_2__* platform_data; scalar_t__ sg_count; struct scsi_cmnd* io_ctx; } ;
struct ahd_tmode_tstate {int dummy; } ;
struct ahd_softc {TYPE_5__* platform_data; int /*<<< orphan*/  pending_scbs; int /*<<< orphan*/  our_id; } ;
struct ahd_linux_device {int active; int /*<<< orphan*/  commands_issued; int /*<<< orphan*/  openings; } ;
struct TYPE_9__ {int ppr_options; } ;
struct ahd_initiator_tinfo {TYPE_3__ curr; } ;
struct TYPE_12__ {int /*<<< orphan*/  lun; int /*<<< orphan*/  id; TYPE_1__* host; } ;
struct TYPE_11__ {int /*<<< orphan*/ * eh_done; } ;
struct TYPE_10__ {int /*<<< orphan*/  control; int /*<<< orphan*/  task_management; scalar_t__ cdb_len; int /*<<< orphan*/  lun; int /*<<< orphan*/  scsiid; } ;
struct TYPE_8__ {scalar_t__ xfer_len; struct ahd_linux_device* dev; } ;
struct TYPE_7__ {scalar_t__ hostdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  AHD_NEVER_COL_IDX ; 
 int /*<<< orphan*/  FUNC0 (struct ahd_softc*,struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FAILED ; 
 int FALSE ; 
 int HZ ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct scb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MK_MESSAGE ; 
 int MSG_EXT_PPR_IU_REQ ; 
 int SCB_ACTIVE ; 
 int SCB_DEVICE_RESET ; 
 int SCB_PACKETIZED ; 
 int SCB_RECOVERY_SCB ; 
 int /*<<< orphan*/  SIU_TASKMGMT_LUN_RESET ; 
 int SUCCESS ; 
 struct ahd_initiator_tinfo* FUNC3 (struct ahd_softc*,char,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ahd_tmode_tstate**) ; 
 struct scb* FUNC4 (struct ahd_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ahd_softc*,unsigned long*) ; 
 char* FUNC6 (struct ahd_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct ahd_softc*,struct scb*) ; 
 int /*<<< orphan*/  FUNC8 (struct scb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct scb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct ahd_softc*,unsigned long*) ; 
 int /*<<< orphan*/  done ; 
 int /*<<< orphan*/  pending_links ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,struct scsi_cmnd*,char*) ; 
 struct ahd_linux_device* FUNC13 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC15(struct scsi_cmnd *cmd)
{
	struct ahd_softc *ahd;
	struct ahd_linux_device *dev;
	struct scb *reset_scb;
	u_int  cdb_byte;
	int    retval = SUCCESS;
	int    paused;
	int    wait;
	struct	ahd_initiator_tinfo *tinfo;
	struct	ahd_tmode_tstate *tstate;
	unsigned long flags;
	FUNC1(done);

	reset_scb = NULL;
	paused = FALSE;
	wait = FALSE;
	ahd = *(struct ahd_softc **)cmd->device->host->hostdata;

	FUNC12(KERN_INFO, cmd,
		    "Attempting to queue a TARGET RESET message:");

	FUNC11("CDB:");
	for (cdb_byte = 0; cdb_byte < cmd->cmd_len; cdb_byte++)
		FUNC11(" 0x%x", cmd->cmnd[cdb_byte]);
	FUNC11("\n");

	/*
	 * Determine if we currently own this command.
	 */
	dev = FUNC13(cmd->device);

	if (dev == NULL) {
		/*
		 * No target device for this command exists,
		 * so we must not still own the command.
		 */
		FUNC12(KERN_INFO, cmd, "Is not an active device\n");
		return SUCCESS;
	}

	/*
	 * Generate us a new SCB
	 */
	reset_scb = FUNC4(ahd, AHD_NEVER_COL_IDX);
	if (!reset_scb) {
		FUNC12(KERN_INFO, cmd, "No SCB available\n");
		return FAILED;
	}

	tinfo = FUNC3(ahd, 'A', ahd->our_id,
				    cmd->device->id, &tstate);
	reset_scb->io_ctx = cmd;
	reset_scb->platform_data->dev = dev;
	reset_scb->sg_count = 0;
	FUNC8(reset_scb, 0);
	FUNC9(reset_scb, 0);
	reset_scb->platform_data->xfer_len = 0;
	reset_scb->hscb->control = 0;
	reset_scb->hscb->scsiid = FUNC0(ahd,cmd);
	reset_scb->hscb->lun = cmd->device->lun;
	reset_scb->hscb->cdb_len = 0;
	reset_scb->hscb->task_management = SIU_TASKMGMT_LUN_RESET;
	reset_scb->flags |= SCB_DEVICE_RESET|SCB_RECOVERY_SCB|SCB_ACTIVE;
	if ((tinfo->curr.ppr_options & MSG_EXT_PPR_IU_REQ) != 0) {
		reset_scb->flags |= SCB_PACKETIZED;
	} else {
		reset_scb->hscb->control |= MK_MESSAGE;
	}
	dev->openings--;
	dev->active++;
	dev->commands_issued++;

	FUNC5(ahd, &flags);

	FUNC2(&ahd->pending_scbs, reset_scb, pending_links);
	FUNC7(ahd, reset_scb);

	ahd->platform_data->eh_done = &done;
	FUNC10(ahd, &flags);

	FUNC11("%s: Device reset code sleeping\n", FUNC6(ahd));
	if (!FUNC14(&done, 5 * HZ)) {
		FUNC5(ahd, &flags);
		ahd->platform_data->eh_done = NULL;
		FUNC10(ahd, &flags);
		FUNC11("%s: Device reset timer expired (active %d)\n",
		       FUNC6(ahd), dev->active);
		retval = FAILED;
	}
	FUNC11("%s: Device reset returning 0x%x\n", FUNC6(ahd), retval);

	return (retval);
}