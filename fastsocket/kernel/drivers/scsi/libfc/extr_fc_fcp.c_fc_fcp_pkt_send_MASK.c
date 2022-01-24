#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct scsi_lun {int dummy; } ;
struct TYPE_8__ {int (* fcp_cmd_send ) (struct fc_lport*,struct fc_fcp_pkt*,int /*<<< orphan*/ ) ;} ;
struct fc_lport {TYPE_3__ tt; } ;
struct TYPE_7__ {int fc_flags; int /*<<< orphan*/  fc_cdb; scalar_t__ fc_lun; int /*<<< orphan*/  fc_dl; } ;
struct fc_fcp_pkt {int req_flags; int /*<<< orphan*/  list; TYPE_5__* cmd; TYPE_2__ cdb_cmd; int /*<<< orphan*/  data_len; } ;
struct fc_fcp_internal {int /*<<< orphan*/  scsi_queue_lock; int /*<<< orphan*/  scsi_pkt_queue; } ;
struct TYPE_9__ {char* ptr; } ;
struct TYPE_10__ {TYPE_4__ SCp; int /*<<< orphan*/  cmd_len; int /*<<< orphan*/  cmnd; TYPE_1__* device; } ;
struct TYPE_6__ {int /*<<< orphan*/  lun; } ;

/* Variables and functions */
 int FCP_CFL_LEN_MASK ; 
 int /*<<< orphan*/  fc_fcp_recv ; 
 struct fc_fcp_internal* FUNC0 (struct fc_lport*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct scsi_lun*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC8 (struct fc_lport*,struct fc_fcp_pkt*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static int FUNC10(struct fc_lport *lport, struct fc_fcp_pkt *fsp)
{
	struct fc_fcp_internal *si = FUNC0(lport);
	unsigned long flags;
	int rc;

	fsp->cmd->SCp.ptr = (char *)fsp;
	fsp->cdb_cmd.fc_dl = FUNC1(fsp->data_len);
	fsp->cdb_cmd.fc_flags = fsp->req_flags & ~FCP_CFL_LEN_MASK;

	FUNC2(fsp->cmd->device->lun,
		       (struct scsi_lun *)fsp->cdb_cmd.fc_lun);
	FUNC5(fsp->cdb_cmd.fc_cdb, fsp->cmd->cmnd, fsp->cmd->cmd_len);

	FUNC6(&si->scsi_queue_lock, flags);
	FUNC3(&fsp->list, &si->scsi_pkt_queue);
	FUNC7(&si->scsi_queue_lock, flags);
	rc = lport->tt.fcp_cmd_send(lport, fsp, fc_fcp_recv);
	if (FUNC9(rc)) {
		FUNC6(&si->scsi_queue_lock, flags);
		fsp->cmd->SCp.ptr = NULL;
		FUNC4(&fsp->list);
		FUNC7(&si->scsi_queue_lock, flags);
	}

	return rc;
}