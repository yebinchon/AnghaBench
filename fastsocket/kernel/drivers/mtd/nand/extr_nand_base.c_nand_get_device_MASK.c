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
typedef  int /*<<< orphan*/  wait_queue_head_t ;
struct nand_chip {int state; TYPE_1__* controller; } ;
struct mtd_info {int dummy; } ;
typedef  int /*<<< orphan*/  spinlock_t ;
struct TYPE_2__ {struct nand_chip* active; int /*<<< orphan*/  wq; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EAGAIN ; 
 int FL_PM_SUSPENDED ; 
 int FL_READY ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static int
FUNC7(struct nand_chip *chip, struct mtd_info *mtd, int new_state)
{
	spinlock_t *lock = &chip->controller->lock;
	wait_queue_head_t *wq = &chip->controller->wq;
	FUNC0(wait, current);
 retry:
	FUNC5(lock);

	/* Hardware controller shared among independent devices */
	if (!chip->controller->active)
		chip->controller->active = chip;

	if (chip->controller->active == chip && chip->state == FL_READY) {
		chip->state = new_state;
		FUNC6(lock);
		return 0;
	}
	if (new_state == FL_PM_SUSPENDED) {
		FUNC6(lock);
		return (chip->state == FL_PM_SUSPENDED) ? 0 : -EAGAIN;
	}
	FUNC4(TASK_UNINTERRUPTIBLE);
	FUNC1(wq, &wait);
	FUNC6(lock);
	FUNC3();
	FUNC2(wq, &wait);
	goto retry;
}