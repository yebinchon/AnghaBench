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
struct bsg_device {scalar_t__ done_cmds; scalar_t__ queued_cmds; int /*<<< orphan*/  lock; int /*<<< orphan*/  wq_done; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  BSG_F_BLOCK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int EAGAIN ; 
 int ENODATA ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static int FUNC8(struct bsg_device *bd)
{
	FUNC1(wait);
	int ret = 0;

	FUNC5(&bd->lock);

	FUNC0(bd->done_cmds > bd->queued_cmds);

	/*
	 * -ENOSPC or -ENODATA?  I'm going for -ENODATA, meaning "I have no
	 * work to do", even though we return -ENOSPC after this same test
	 * during bsg_write() -- there, it means our buffer can't have more
	 * bsg_commands added to it, thus has no space left.
	 */
	if (bd->done_cmds == bd->queued_cmds) {
		ret = -ENODATA;
		goto unlock;
	}

	if (!FUNC7(BSG_F_BLOCK, &bd->flags)) {
		ret = -EAGAIN;
		goto unlock;
	}

	FUNC4(&bd->wq_done, &wait, TASK_UNINTERRUPTIBLE);
	FUNC6(&bd->lock);
	FUNC3();
	FUNC2(&bd->wq_done, &wait);

	return ret;
unlock:
	FUNC6(&bd->lock);
	return ret;
}