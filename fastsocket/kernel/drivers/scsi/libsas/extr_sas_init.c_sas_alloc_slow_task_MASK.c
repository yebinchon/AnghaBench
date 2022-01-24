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
struct sas_task_slow {int /*<<< orphan*/  completion; int /*<<< orphan*/  timer; } ;
struct sas_task {struct sas_task_slow* slow_task; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sas_task_slow*) ; 
 struct sas_task_slow* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct sas_task*) ; 
 struct sas_task* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sas_task_cache ; 

struct sas_task *FUNC6(gfp_t flags)
{
	struct sas_task *task = FUNC5(flags);
	struct sas_task_slow *slow = FUNC3(sizeof(*slow), flags);

	if (!task || !slow) {
		if (task)
			FUNC4(sas_task_cache, task);
		FUNC2(slow);
		return NULL;
	}

	task->slow_task = slow;
	FUNC1(&slow->timer);
	FUNC0(&slow->completion);

	return task;
}