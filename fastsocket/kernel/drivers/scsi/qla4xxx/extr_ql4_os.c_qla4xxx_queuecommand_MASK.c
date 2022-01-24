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
struct srb {int dummy; } ;
struct scsi_qla_host {TYPE_2__* host; int /*<<< orphan*/  srb_mempool; int /*<<< orphan*/  dpc_flags; int /*<<< orphan*/  flags; } ;
struct scsi_cmnd {int result; TYPE_1__* device; } ;
struct iscsi_cls_session {int dummy; } ;
struct ddb_entry {struct iscsi_cls_session* sess; } ;
struct TYPE_4__ {int /*<<< orphan*/  host_lock; } ;
struct TYPE_3__ {struct ddb_entry* hostdata; int /*<<< orphan*/  host; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_EEH_BUSY ; 
 int /*<<< orphan*/  AF_LINK_UP ; 
 int /*<<< orphan*/  AF_LOOPBACK ; 
 int /*<<< orphan*/  AF_ONLINE ; 
 int /*<<< orphan*/  AF_PCI_CHANNEL_IO_PERM_FAILURE ; 
 int DID_IMM_RETRY ; 
 int DID_NO_CONNECT ; 
 int DID_REQUEUE ; 
 int /*<<< orphan*/  DPC_HA_NEED_QUIESCENT ; 
 int /*<<< orphan*/  DPC_HA_UNRECOVERABLE ; 
 int /*<<< orphan*/  DPC_RESET_ACTIVE ; 
 int /*<<< orphan*/  DPC_RESET_HA ; 
 int /*<<< orphan*/  DPC_RESET_HA_FW_CONTEXT ; 
 int /*<<< orphan*/  DPC_RESET_HA_INTR ; 
 int QLA_SUCCESS ; 
 int SCSI_MLQUEUE_HOST_BUSY ; 
 int FUNC0 (struct iscsi_cls_session*) ; 
 int /*<<< orphan*/  FUNC1 (struct srb*,int /*<<< orphan*/ ) ; 
 struct srb* FUNC2 (struct scsi_qla_host*,struct ddb_entry*,struct scsi_cmnd*,void (*) (struct scsi_cmnd*)) ; 
 int FUNC3 (struct scsi_qla_host*,struct srb*) ; 
 int /*<<< orphan*/  FUNC4 (struct scsi_qla_host*,struct srb*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct scsi_qla_host* FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct scsi_cmnd *cmd,
				void (*done)(struct scsi_cmnd *))
{
	struct scsi_qla_host *ha = FUNC8(cmd->device->host);
	struct ddb_entry *ddb_entry = cmd->device->hostdata;
	struct iscsi_cls_session *sess = ddb_entry->sess;
	struct srb *srb;
	int rval;

	if (FUNC7(AF_EEH_BUSY, &ha->flags)) {
		if (FUNC7(AF_PCI_CHANNEL_IO_PERM_FAILURE, &ha->flags))
			cmd->result = DID_NO_CONNECT << 16;
		else
			cmd->result = DID_REQUEUE << 16;
		goto qc_fail_command;
	}

	if (!sess) {
		cmd->result = DID_IMM_RETRY << 16;
		goto qc_fail_command;
	}

	rval = FUNC0(sess);
	if (rval) {
		cmd->result = rval;
		goto qc_fail_command;
	}

	if (FUNC7(DPC_RESET_HA_INTR, &ha->dpc_flags) ||
	    FUNC7(DPC_RESET_ACTIVE, &ha->dpc_flags) ||
	    FUNC7(DPC_RESET_HA, &ha->dpc_flags) ||
	    FUNC7(DPC_HA_UNRECOVERABLE, &ha->dpc_flags) ||
	    FUNC7(DPC_HA_NEED_QUIESCENT, &ha->dpc_flags) ||
	    !FUNC7(AF_ONLINE, &ha->flags) ||
	    !FUNC7(AF_LINK_UP, &ha->flags) ||
	    FUNC7(AF_LOOPBACK, &ha->flags) ||
	    FUNC7(DPC_RESET_HA_FW_CONTEXT, &ha->dpc_flags))
		goto qc_host_busy;

	FUNC6(ha->host->host_lock);

	srb = FUNC2(ha, ddb_entry, cmd, done);
	if (!srb)
		goto qc_host_busy_lock;

	rval = FUNC3(ha, srb);
	if (rval != QLA_SUCCESS)
		goto qc_host_busy_free_sp;

	FUNC5(ha->host->host_lock);
	return 0;

qc_host_busy_free_sp:
	FUNC4(ha, srb);
	FUNC1(srb, ha->srb_mempool);

qc_host_busy_lock:
	FUNC5(ha->host->host_lock);

qc_host_busy:
	return SCSI_MLQUEUE_HOST_BUSY;

qc_fail_command:
	done(cmd);

	return 0;
}