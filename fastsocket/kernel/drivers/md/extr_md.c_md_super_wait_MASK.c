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
struct mddev {int /*<<< orphan*/  sb_wait; int /*<<< orphan*/  pending_writes; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  wq ; 

void FUNC5(struct mddev *mddev)
{
	/* wait for all superblock writes that were scheduled to complete */
	FUNC0(wq);
	for(;;) {
		FUNC3(&mddev->sb_wait, &wq, TASK_UNINTERRUPTIBLE);
		if (FUNC1(&mddev->pending_writes)==0)
			break;
		FUNC4();
	}
	FUNC2(&mddev->sb_wait, &wq);
}