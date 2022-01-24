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
typedef  scalar_t__ uint32_t ;
struct scsi_qla_host {TYPE_1__* host; int /*<<< orphan*/  hardware_lock; } ;
struct scsi_cmnd {int dummy; } ;
struct TYPE_2__ {scalar_t__ can_queue; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned long HZ ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int QLA_ERROR ; 
 int QLA_SUCCESS ; 
 unsigned long WAIT_CMD_TOV ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct scsi_qla_host*,char*,unsigned long) ; 
 struct scsi_cmnd* FUNC4 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC8(struct scsi_qla_host *ha)
{
	uint32_t index = 0;
	unsigned long flags;
	struct scsi_cmnd *cmd;

	unsigned long wtime = jiffies + (WAIT_CMD_TOV * HZ);

	FUNC1(FUNC3(KERN_INFO, ha, "Wait up to %d seconds for cmds to "
	    "complete\n", WAIT_CMD_TOV));

	while (!FUNC7(jiffies, wtime)) {
		FUNC5(&ha->hardware_lock, flags);
		/* Find a command that hasn't completed. */
		for (index = 0; index < ha->host->can_queue; index++) {
			cmd = FUNC4(ha->host, index);
			/*
			 * We cannot just check if the index is valid,
			 * becase if we are run from the scsi eh, then
			 * the scsi/block layer is going to prevent
			 * the tag from being released.
			 */
			if (cmd != NULL && FUNC0(cmd))
				break;
		}
		FUNC6(&ha->hardware_lock, flags);

		/* If No Commands are pending, wait is complete */
		if (index == ha->host->can_queue)
			return QLA_SUCCESS;

		FUNC2(1000);
	}
	/* If we timed out on waiting for commands to come back
	 * return ERROR. */
	return QLA_ERROR;
}