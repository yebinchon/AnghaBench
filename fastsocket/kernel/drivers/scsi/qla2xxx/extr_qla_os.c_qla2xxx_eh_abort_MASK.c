#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct scsi_cmnd {TYPE_1__* device; } ;
struct qla_hw_data {int /*<<< orphan*/  hardware_lock; TYPE_2__* isp_ops; } ;
struct TYPE_13__ {int /*<<< orphan*/  (* done ) (struct qla_hw_data*,TYPE_3__*,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_3__ srb_t ;
struct TYPE_14__ {int /*<<< orphan*/  host_no; struct qla_hw_data* hw; } ;
typedef  TYPE_4__ scsi_qla_host_t ;
struct TYPE_12__ {scalar_t__ (* abort_command ) (TYPE_3__*) ;} ;
struct TYPE_11__ {unsigned int id; unsigned int lun; int /*<<< orphan*/  host; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct scsi_cmnd*) ; 
 int FAILED ; 
 scalar_t__ QLA_SUCCESS ; 
 int SUCCESS ; 
 int FUNC1 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_4__*,int,char*,struct scsi_cmnd*,...) ; 
 int /*<<< orphan*/  ql_dbg_taskm ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_4__*,int,char*,struct scsi_cmnd*,...) ; 
 int /*<<< orphan*/  ql_log_info ; 
 int /*<<< orphan*/  ql_log_warn ; 
 scalar_t__ FUNC4 (struct scsi_cmnd*) ; 
 TYPE_4__* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC9 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (struct qla_hw_data*,TYPE_3__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC11(struct scsi_cmnd *cmd)
{
	scsi_qla_host_t *vha = FUNC5(cmd->device->host);
	srb_t *sp;
	int ret;
	unsigned int id, lun;
	unsigned long flags;
	int wait = 0;
	struct qla_hw_data *ha = vha->hw;

	if (!FUNC0(cmd))
		return SUCCESS;

	ret = FUNC1(cmd);
	if (ret != 0)
		return ret;
	ret = SUCCESS;

	id = cmd->device->id;
	lun = cmd->device->lun;

	FUNC7(&ha->hardware_lock, flags);
	sp = (srb_t *) FUNC0(cmd);
	if (!sp) {
		FUNC8(&ha->hardware_lock, flags);
		return SUCCESS;
	}

	FUNC2(ql_dbg_taskm, vha, 0x8002,
	    "Aborting from RISC nexus=%ld:%d:%d sp=%p cmd=%p\n",
	    vha->host_no, id, lun, sp, cmd);

	/* Get a reference to the sp and drop the lock.*/
	FUNC6(sp);

	FUNC8(&ha->hardware_lock, flags);
	if (ha->isp_ops->abort_command(sp)) {
		ret = FAILED;
		FUNC2(ql_dbg_taskm, vha, 0x8003,
		    "Abort command mbx failed cmd=%p.\n", cmd);
	} else {
		FUNC2(ql_dbg_taskm, vha, 0x8004,
		    "Abort command mbx success cmd=%p.\n", cmd);
		wait = 1;
	}
	FUNC7(&ha->hardware_lock, flags);
	sp->done(ha, sp, 0);
	FUNC8(&ha->hardware_lock, flags);

	/* Did the command return during mailbox execution? */
	if (ret == FAILED && !FUNC0(cmd))
		ret = SUCCESS;

	/* Wait for the command to be returned. */
	if (wait) {
		if (FUNC4(cmd) != QLA_SUCCESS) {
			FUNC3(ql_log_warn, vha, 0x8006,
			    "Abort handler timed out cmd=%p.\n", cmd);
			ret = FAILED;
		}
	}

	FUNC3(ql_log_info, vha, 0x801c,
	    "Abort command issued nexus=%ld:%d:%d --  %d %x.\n",
	    vha->host_no, id, lun, wait, ret);

	return ret;
}