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
struct binder_proc {int deferred_work; int /*<<< orphan*/  deferred_work_node; } ;
typedef  enum binder_deferred_state { ____Placeholder_binder_deferred_state } binder_deferred_state ;

/* Variables and functions */
 int /*<<< orphan*/  binder_deferred_list ; 
 int /*<<< orphan*/  binder_deferred_lock ; 
 int /*<<< orphan*/  binder_deferred_work ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(struct binder_proc *proc, enum binder_deferred_state defer)
{
	FUNC2(&binder_deferred_lock);
	proc->deferred_work |= defer;
	if (FUNC1(&proc->deferred_work_node)) {
		FUNC0(&proc->deferred_work_node,
				&binder_deferred_list);
		FUNC4(&binder_deferred_work);
	}
	FUNC3(&binder_deferred_lock);
}