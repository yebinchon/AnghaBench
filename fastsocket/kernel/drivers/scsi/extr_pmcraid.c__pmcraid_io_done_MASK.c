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
struct scsi_cmnd {int /*<<< orphan*/  (* scsi_done ) (struct scsi_cmnd*) ;int /*<<< orphan*/  result; } ;
struct pmcraid_cmd {TYPE_1__* ioa_cb; struct scsi_cmnd* scsi_cmd; } ;
struct TYPE_4__ {int /*<<< orphan*/ * cdb; int /*<<< orphan*/  response_handle; } ;
struct TYPE_3__ {TYPE_2__ ioarcb; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct pmcraid_cmd*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC5 (struct scsi_cmnd*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct scsi_cmnd*) ; 

__attribute__((used)) static int FUNC7(struct pmcraid_cmd *cmd, int reslen, int ioasc)
{
	struct scsi_cmnd *scsi_cmd = cmd->scsi_cmd;
	int rc = 0;

	FUNC5(scsi_cmd, reslen);

	FUNC3("response(%d) CDB[0] = %x ioasc:result: %x:%x\n",
		FUNC1(cmd->ioa_cb->ioarcb.response_handle) >> 2,
		cmd->ioa_cb->ioarcb.cdb[0],
		ioasc, scsi_cmd->result);

	if (FUNC0(ioasc) != 0)
		rc = FUNC2(cmd);

	if (rc == 0) {
		FUNC4(scsi_cmd);
		scsi_cmd->scsi_done(scsi_cmd);
	}

	return rc;
}