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
struct ttm_lock {int /*<<< orphan*/  queue; int /*<<< orphan*/  lock; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  TTM_WRITE_LOCK_PENDING ; 
 int /*<<< orphan*/  FUNC0 (struct ttm_lock*) ; 
 int /*<<< orphan*/  FUNC1 (struct ttm_lock*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8(struct ttm_lock *lock, bool interruptible)
{
	int ret = 0;

	if (interruptible) {
		ret = FUNC6(lock->queue,
					       FUNC1(lock));
		if (FUNC4(ret != 0)) {
			FUNC2(&lock->lock);
			lock->flags &= ~TTM_WRITE_LOCK_PENDING;
			FUNC7(&lock->queue);
			FUNC3(&lock->lock);
		}
	} else
		FUNC5(lock->queue, FUNC0(lock));

	return ret;
}