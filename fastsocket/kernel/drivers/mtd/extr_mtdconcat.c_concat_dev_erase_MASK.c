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
typedef  int /*<<< orphan*/  wait_queue_head_t ;
struct mtd_info {int (* erase ) (struct mtd_info*,struct erase_info*) ;} ;
struct erase_info {unsigned long priv; scalar_t__ state; int /*<<< orphan*/  callback; struct mtd_info* mtd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EIO ; 
 scalar_t__ MTD_ERASE_DONE ; 
 scalar_t__ MTD_ERASE_FAILED ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  concat_erase_callback ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct mtd_info*,struct erase_info*) ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static int FUNC7(struct mtd_info *mtd, struct erase_info *erase)
{
	int err;
	wait_queue_head_t waitq;
	FUNC0(wait, current);

	/*
	 * This code was stol^H^H^H^Hinspired by mtdchar.c
	 */
	FUNC2(&waitq);

	erase->mtd = mtd;
	erase->callback = concat_erase_callback;
	erase->priv = (unsigned long) &waitq;

	/*
	 * FIXME: Allow INTERRUPTIBLE. Which means
	 * not having the wait_queue head on the stack.
	 */
	err = mtd->erase(mtd, erase);
	if (!err) {
		FUNC5(TASK_UNINTERRUPTIBLE);
		FUNC1(&waitq, &wait);
		if (erase->state != MTD_ERASE_DONE
		    && erase->state != MTD_ERASE_FAILED)
			FUNC4();
		FUNC3(&waitq, &wait);
		FUNC5(TASK_RUNNING);

		err = (erase->state == MTD_ERASE_FAILED) ? -EIO : 0;
	}
	return err;
}