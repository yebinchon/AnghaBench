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
struct poll_table_struct {int dummy; } ;
struct file {struct binder_proc* private_data; } ;
struct binder_thread {scalar_t__ return_error; int /*<<< orphan*/  wait; int /*<<< orphan*/  todo; int /*<<< orphan*/ * transaction_stack; } ;
struct binder_proc {int /*<<< orphan*/  wait; } ;

/* Variables and functions */
 scalar_t__ BR_OK ; 
 unsigned int POLLIN ; 
 struct binder_thread* FUNC0 (struct binder_proc*) ; 
 scalar_t__ FUNC1 (struct binder_proc*,struct binder_thread*) ; 
 scalar_t__ FUNC2 (struct binder_thread*) ; 
 int /*<<< orphan*/  binder_lock ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct file*,int /*<<< orphan*/ *,struct poll_table_struct*) ; 

__attribute__((used)) static unsigned int FUNC7(struct file *filp,
				struct poll_table_struct *wait)
{
	struct binder_proc *proc = filp->private_data;
	struct binder_thread *thread = NULL;
	int wait_for_proc_work;

	FUNC4(&binder_lock);
	thread = FUNC0(proc);

	wait_for_proc_work = thread->transaction_stack == NULL &&
		FUNC3(&thread->todo) && thread->return_error == BR_OK;
	FUNC5(&binder_lock);

	if (wait_for_proc_work) {
		if (FUNC1(proc, thread))
			return POLLIN;
		FUNC6(filp, &proc->wait, wait);
		if (FUNC1(proc, thread))
			return POLLIN;
	} else {
		if (FUNC2(thread))
			return POLLIN;
		FUNC6(filp, &thread->wait, wait);
		if (FUNC2(thread))
			return POLLIN;
	}
	return 0;
}