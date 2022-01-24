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
struct sas_task {int task_state_flags; TYPE_1__* slow_task; int /*<<< orphan*/  task_state_lock; } ;
struct TYPE_2__ {int /*<<< orphan*/  completion; } ;

/* Variables and functions */
 int SAS_TASK_STATE_ABORTED ; 
 int SAS_TASK_STATE_DONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(unsigned long _task)
{
	struct sas_task *task = (void *) _task;
	unsigned long flags;

	FUNC1(&task->task_state_lock, flags);
	if (!(task->task_state_flags & SAS_TASK_STATE_DONE))
		task->task_state_flags |= SAS_TASK_STATE_ABORTED;
	FUNC2(&task->task_state_lock, flags);

	FUNC0(&task->slow_task->completion);
}