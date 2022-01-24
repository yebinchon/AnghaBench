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
typedef  int /*<<< orphan*/  u32 ;
struct sync_cmd_info {int status; int /*<<< orphan*/  result; int /*<<< orphan*/  task; } ;
struct nvme_queue {int dummy; } ;
struct TYPE_2__ {int command_id; } ;
struct nvme_command {TYPE_1__ common; } ;

/* Variables and functions */
 int EINTR ; 
 int /*<<< orphan*/  TASK_KILLABLE ; 
 int FUNC0 (struct nvme_queue*,struct sync_cmd_info*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC1 (struct nvme_queue*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nvme_queue*,struct nvme_command*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sync_completion ; 

int FUNC5(struct nvme_queue *nvmeq, struct nvme_command *cmd,
						u32 *result, unsigned timeout)
{
	int cmdid;
	struct sync_cmd_info cmdinfo;

	cmdinfo.task = current;
	cmdinfo.status = -EINTR;

	cmdid = FUNC0(nvmeq, &cmdinfo, sync_completion,
								timeout);
	if (cmdid < 0)
		return cmdid;
	cmd->common.command_id = cmdid;

	FUNC4(TASK_KILLABLE);
	FUNC2(nvmeq, cmd);
	FUNC3(timeout);

	if (cmdinfo.status == -EINTR) {
		FUNC1(nvmeq, cmdid);
		return -EINTR;
	}

	if (result)
		*result = cmdinfo.result;

	return cmdinfo.status;
}