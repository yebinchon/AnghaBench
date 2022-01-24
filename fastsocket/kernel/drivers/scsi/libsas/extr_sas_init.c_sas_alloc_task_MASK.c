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
struct sas_task {int /*<<< orphan*/  task_state_flags; int /*<<< orphan*/  task_state_lock; int /*<<< orphan*/  list; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SAS_TASK_STATE_PENDING ; 
 struct sas_task* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sas_task_cache ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

struct sas_task *FUNC3(gfp_t flags)
{
	struct sas_task *task = FUNC1(sas_task_cache, flags);

	if (task) {
		FUNC0(&task->list);
		FUNC2(&task->task_state_lock);
		task->task_state_flags = SAS_TASK_STATE_PENDING;
	}

	return task;
}