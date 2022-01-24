#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct unw_frame_info {int dummy; } ;
struct task_struct {scalar_t__ state; TYPE_2__* sighand; TYPE_1__* signal; } ;
struct TYPE_4__ {int /*<<< orphan*/  siglock; } ;
struct TYPE_3__ {int flags; } ;

/* Variables and functions */
 int SIGNAL_STOP_STOPPED ; 
 scalar_t__ TASK_STOPPED ; 
 scalar_t__ TASK_TRACED ; 
 int /*<<< orphan*/  TIF_RESTORE_RSE ; 
 int /*<<< orphan*/  FUNC0 (struct unw_frame_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ia64_sync_user_rbs ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tasklist_lock ; 
 int /*<<< orphan*/  FUNC6 (struct task_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct unw_frame_info*,struct task_struct*) ; 

void
FUNC8 (struct task_struct *child)
{
	int stopped = 0;
	struct unw_frame_info info;

	/*
	 * If the child is in TASK_STOPPED, we need to change that to
	 * TASK_TRACED momentarily while we operate on it.  This ensures
	 * that the child won't be woken up and return to user mode while
	 * we are doing the sync.  (It can only be woken up for SIGKILL.)
	 */

	FUNC1(&tasklist_lock);
	if (child->signal) {
		FUNC4(&child->sighand->siglock);
		if (child->state == TASK_STOPPED &&
		    !FUNC6(child, TIF_RESTORE_RSE)) {
			FUNC3(child);

			child->state = TASK_TRACED;
			stopped = 1;
		}
		FUNC5(&child->sighand->siglock);
	}
	FUNC2(&tasklist_lock);

	if (!stopped)
		return;

	FUNC7(&info, child);
	FUNC0(&info, ia64_sync_user_rbs);

	/*
	 * Now move the child back into TASK_STOPPED if it should be in a
	 * job control stop, so that SIGCONT can be used to wake it up.
	 */
	FUNC1(&tasklist_lock);
	if (child->signal) {
		FUNC4(&child->sighand->siglock);
		if (child->state == TASK_TRACED &&
		    (child->signal->flags & SIGNAL_STOP_STOPPED)) {
			child->state = TASK_STOPPED;
		}
		FUNC5(&child->sighand->siglock);
	}
	FUNC2(&tasklist_lock);
}