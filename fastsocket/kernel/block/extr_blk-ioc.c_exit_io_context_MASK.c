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
struct task_struct {struct io_context* io_context; } ;
struct io_context {TYPE_1__* aic; int /*<<< orphan*/  nr_tasks; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* exit ) (TYPE_1__*) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct io_context*) ; 
 int /*<<< orphan*/  FUNC2 (struct io_context*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC5 (struct task_struct*) ; 

void FUNC6(struct task_struct *task)
{
	struct io_context *ioc;

	FUNC4(task);
	ioc = task->io_context;
	task->io_context = NULL;
	FUNC5(task);

	if (FUNC0(&ioc->nr_tasks)) {
		if (ioc->aic && ioc->aic->exit)
			ioc->aic->exit(ioc->aic);
		FUNC1(ioc);

	}
	FUNC2(ioc);
}