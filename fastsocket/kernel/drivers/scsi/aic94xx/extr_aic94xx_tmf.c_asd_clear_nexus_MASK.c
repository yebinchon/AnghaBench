#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct sas_task {int task_state_flags; int /*<<< orphan*/  task_state_lock; struct asd_ascb* lldd_task; } ;
struct asd_ascb {int /*<<< orphan*/ * completion; scalar_t__ tag_valid; } ;

/* Variables and functions */
 int /*<<< orphan*/  AIC94XX_SCB_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int SAS_TASK_STATE_DONE ; 
 int TMF_RESP_FUNC_COMPLETE ; 
 int TMF_RESP_FUNC_FAILED ; 
 int FUNC2 (struct sas_task*) ; 
 int FUNC3 (struct sas_task*) ; 
 int /*<<< orphan*/  completion ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct sas_task *task)
{
	int res = TMF_RESP_FUNC_FAILED;
	int leftover;
	struct asd_ascb *tascb = task->lldd_task;
	FUNC1(completion);
	unsigned long flags;

	tascb->completion = &completion;

	FUNC0("task not done, clearing nexus\n");
	if (tascb->tag_valid)
		res = FUNC3(task);
	else
		res = FUNC2(task);
	leftover = FUNC6(&completion,
					       AIC94XX_SCB_TIMEOUT);
	tascb->completion = NULL;
	FUNC0("came back from clear nexus\n");
	FUNC4(&task->task_state_lock, flags);
	if (leftover < 1)
		res = TMF_RESP_FUNC_FAILED;
	if (task->task_state_flags & SAS_TASK_STATE_DONE)
		res = TMF_RESP_FUNC_COMPLETE;
	FUNC5(&task->task_state_lock, flags);

	return res;
}