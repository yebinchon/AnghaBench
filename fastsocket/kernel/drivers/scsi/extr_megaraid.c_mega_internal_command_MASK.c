#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct scsi_device {int /*<<< orphan*/  host; } ;
struct TYPE_13__ {int /*<<< orphan*/  idx; int /*<<< orphan*/ * pthru; int /*<<< orphan*/  raw_mbox; TYPE_4__* cmd; int /*<<< orphan*/  state; } ;
typedef  TYPE_1__ scb_t ;
struct TYPE_14__ {scalar_t__ cmd; int status; int /*<<< orphan*/  subopcode; int /*<<< orphan*/  opcode; } ;
typedef  TYPE_2__ megacmd_t ;
typedef  int /*<<< orphan*/  mega_passthru ;
struct TYPE_15__ {int /*<<< orphan*/  int_mtx; int /*<<< orphan*/  int_waitq; int /*<<< orphan*/  host; TYPE_1__* int_cdb; TYPE_1__ int_scb; } ;
typedef  TYPE_3__ adapter_t ;
struct TYPE_16__ {int result; TYPE_1__* cmnd; void* host_scribble; struct scsi_device* device; } ;
typedef  TYPE_4__ Scsi_Cmnd ;

/* Variables and functions */
 int /*<<< orphan*/  CMDID_INT_CMDS ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 TYPE_1__ MEGA_INTERNAL_CMD ; 
 scalar_t__ MEGA_MBOXCMD_PASSTHRU ; 
 int /*<<< orphan*/  SCB_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 (struct scsi_device*) ; 
 struct scsi_device* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mega_internal_done ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 TYPE_4__* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 scalar_t__ trace_level ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC11(adapter_t *adapter, megacmd_t *mc, mega_passthru *pthru)
{
	Scsi_Cmnd	*scmd;
	struct	scsi_device *sdev;
	scb_t	*scb;
	int	rval;

	scmd = FUNC8(GFP_KERNEL);
	if (!scmd)
		return -ENOMEM;

	/*
	 * The internal commands share one command id and hence are
	 * serialized. This is so because we want to reserve maximum number of
	 * available command ids for the I/O commands.
	 */
	FUNC5(&adapter->int_mtx);

	scb = &adapter->int_scb;
	FUNC4(scb, 0, sizeof(scb_t));

	sdev = FUNC1(sizeof(struct scsi_device), GFP_KERNEL);
	scmd->device = sdev;

	FUNC4(adapter->int_cdb, 0, sizeof(adapter->int_cdb));
	scmd->cmnd = adapter->int_cdb;
	scmd->device->host = adapter->host;
	scmd->host_scribble = (void *)scb;
	scmd->cmnd[0] = MEGA_INTERNAL_CMD;

	scb->state |= SCB_ACTIVE;
	scb->cmd = scmd;

	FUNC3(scb->raw_mbox, mc, sizeof(megacmd_t));

	/*
	 * Is it a passthru command
	 */
	if( mc->cmd == MEGA_MBOXCMD_PASSTHRU ) {

		scb->pthru = pthru;
	}

	scb->idx = CMDID_INT_CMDS;

	FUNC2(scmd, mega_internal_done);

	FUNC10(&adapter->int_waitq);

	rval = scmd->result;
	mc->status = scmd->result;
	FUNC0(sdev);

	/*
	 * Print a debug message for all failed commands. Applications can use
	 * this information.
	 */
	if( scmd->result && trace_level ) {
		FUNC7("megaraid: cmd [%x, %x, %x] status:[%x]\n",
			mc->cmd, mc->opcode, mc->subopcode, scmd->result);
	}

	FUNC6(&adapter->int_mtx);

	FUNC9(GFP_KERNEL, scmd);

	return rval;
}