#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct scsi_cmnd {TYPE_2__* device; } ;
struct sbp2_lu {int /*<<< orphan*/  cmd_orb_lock; } ;
struct sbp2_command_info {TYPE_3__* Current_SCpnt; int /*<<< orphan*/  (* Current_done ) (TYPE_3__*) ;} ;
struct TYPE_6__ {int result; } ;
struct TYPE_5__ {TYPE_1__* host; } ;
struct TYPE_4__ {scalar_t__* hostdata; } ;

/* Variables and functions */
 int DID_ABORT ; 
 int /*<<< orphan*/  DID_BUS_BUSY ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (struct sbp2_lu*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sbp2_lu*,int /*<<< orphan*/ ) ; 
 struct sbp2_command_info* FUNC3 (struct sbp2_lu*,struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC4 (struct sbp2_lu*,struct sbp2_command_info*) ; 
 scalar_t__ FUNC5 (struct sbp2_lu*) ; 
 int /*<<< orphan*/  FUNC6 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 

__attribute__((used)) static int FUNC10(struct scsi_cmnd *SCpnt)
{
	struct sbp2_lu *lu = (struct sbp2_lu *)SCpnt->device->host->hostdata[0];
	struct sbp2_command_info *cmd;
	unsigned long flags;

	FUNC0("aborting sbp2 command");
	FUNC6(SCpnt);

	if (FUNC5(lu)) {
		FUNC1(lu, 1);

		/* Return a matching command structure to the free pool. */
		FUNC7(&lu->cmd_orb_lock, flags);
		cmd = FUNC3(lu, SCpnt);
		if (cmd) {
			FUNC4(lu, cmd);
			if (cmd->Current_SCpnt) {
				cmd->Current_SCpnt->result = DID_ABORT << 16;
				cmd->Current_done(cmd->Current_SCpnt);
			}
		}
		FUNC8(&lu->cmd_orb_lock, flags);

		FUNC2(lu, DID_BUS_BUSY);
	}

	return SUCCESS;
}