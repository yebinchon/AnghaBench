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
struct TYPE_2__ {int /*<<< orphan*/  xstate; } ;
struct task_struct {TYPE_1__ thread; } ;
struct fpu {int dummy; } ;

/* Variables and functions */
 scalar_t__ HAVE_HWFP ; 
 struct task_struct* current ; 
 int FUNC0 (struct fpu*) ; 
 int /*<<< orphan*/  FUNC1 (struct fpu*) ; 
 int /*<<< orphan*/  FUNC2 (struct task_struct*) ; 
 scalar_t__ FUNC3 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC4 (struct task_struct*) ; 

int FUNC5(struct task_struct *tsk)
{
	int ret;

	if (FUNC3(tsk)) {
		if (HAVE_HWFP && tsk == current)
			FUNC4(tsk);
		return 0;
	}

	/*
	 * Memory allocation at the first usage of the FPU and other state.
	 */
	ret = FUNC0((struct fpu *)&tsk->thread.xstate);
	if (ret)
		return ret;

	FUNC1((struct fpu *)&tsk->thread.xstate);

	FUNC2(tsk);
	return 0;
}