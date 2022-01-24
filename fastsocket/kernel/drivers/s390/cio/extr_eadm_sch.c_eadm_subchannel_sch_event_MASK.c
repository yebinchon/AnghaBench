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
struct subchannel {int /*<<< orphan*/  lock; int /*<<< orphan*/  todo_work; int /*<<< orphan*/  dev; } ;
struct eadm_private {scalar_t__ state; } ;

/* Variables and functions */
 scalar_t__ EADM_IDLE ; 
 scalar_t__ EADM_NOT_OPER ; 
 int /*<<< orphan*/  SCH_TODO_UNREG ; 
 scalar_t__ FUNC0 (struct subchannel*) ; 
 int /*<<< orphan*/  FUNC1 (struct subchannel*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct eadm_private* FUNC3 (struct subchannel*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned long) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct subchannel *sch, int process)
{
	struct eadm_private *private;
	unsigned long flags;
	int ret = 0;

	FUNC4(sch->lock, flags);
	if (!FUNC2(&sch->dev))
		goto out_unlock;

	if (FUNC6(&sch->todo_work))
		goto out_unlock;

	if (FUNC0(sch)) {
		FUNC1(sch, SCH_TODO_UNREG);
		goto out_unlock;
	}
	private = FUNC3(sch);
	if (private->state == EADM_NOT_OPER)
		private->state = EADM_IDLE;

out_unlock:
	FUNC5(sch->lock, flags);

	return ret;
}