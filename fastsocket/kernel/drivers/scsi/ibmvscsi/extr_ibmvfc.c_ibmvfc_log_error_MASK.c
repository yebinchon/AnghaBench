#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct scsi_cmnd {int /*<<< orphan*/ * cmnd; } ;
struct ibmvfc_host {scalar_t__ log_level; } ;
struct TYPE_6__ {int rsp_code; } ;
struct TYPE_7__ {TYPE_2__ info; } ;
struct ibmvfc_fcp_rsp {int flags; int /*<<< orphan*/  scsi_status; TYPE_3__ data; } ;
struct ibmvfc_event {struct scsi_cmnd* cmnd; struct ibmvfc_host* vhost; TYPE_1__* xfer_iu; } ;
struct ibmvfc_cmd {int /*<<< orphan*/  error; int /*<<< orphan*/  status; struct ibmvfc_fcp_rsp rsp; } ;
struct TYPE_8__ {int log; char* name; } ;
struct TYPE_5__ {struct ibmvfc_cmd cmd; } ;

/* Variables and functions */
 int FCP_RSP_LEN_VALID ; 
 scalar_t__ IBMVFC_DEFAULT_LOG_LEVEL ; 
 int /*<<< orphan*/  KERN_ERR ; 
 TYPE_4__* cmd_status ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct scsi_cmnd*,char*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct scsi_cmnd*) ; 
 char* unknown_error ; 

__attribute__((used)) static void FUNC3(struct ibmvfc_event *evt)
{
	struct ibmvfc_cmd *vfc_cmd = &evt->xfer_iu->cmd;
	struct ibmvfc_host *vhost = evt->vhost;
	struct ibmvfc_fcp_rsp *rsp = &vfc_cmd->rsp;
	struct scsi_cmnd *cmnd = evt->cmnd;
	const char *err = unknown_error;
	int index = FUNC0(vfc_cmd->status, vfc_cmd->error);
	int logerr = 0;
	int rsp_code = 0;

	if (index >= 0) {
		logerr = cmd_status[index].log;
		err = cmd_status[index].name;
	}

	if (!logerr && (vhost->log_level <= (IBMVFC_DEFAULT_LOG_LEVEL + 1)))
		return;

	if (rsp->flags & FCP_RSP_LEN_VALID)
		rsp_code = rsp->data.info.rsp_code;

	FUNC1(KERN_ERR, cmnd, "Command (%02X) failed: %s (%x:%x) "
		    "flags: %x fcp_rsp: %x, resid=%d, scsi_status: %x\n",
		    cmnd->cmnd[0], err, vfc_cmd->status, vfc_cmd->error,
		    rsp->flags, rsp_code, FUNC2(cmnd), rsp->scsi_status);
}