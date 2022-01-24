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
struct task_struct {int dummy; } ;
struct ktstate {int /*<<< orphan*/  rendez; struct task_struct* task; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  kthread ; 
 struct task_struct* FUNC2 (int /*<<< orphan*/ ,struct ktstate*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int
FUNC4(struct ktstate *k)
{
	struct task_struct *task;

	FUNC1(&k->rendez);
	task = FUNC2(kthread, k, k->name);
	if (task == NULL || FUNC0(task))
		return -ENOMEM;
	k->task = task;
	FUNC3(&k->rendez); /* allow kthread to start */
	FUNC1(&k->rendez);	/* for waiting for exit later */
	return 0;
}