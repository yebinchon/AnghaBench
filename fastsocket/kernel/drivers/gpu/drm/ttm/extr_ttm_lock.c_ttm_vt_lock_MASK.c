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
struct ttm_object_file {int dummy; } ;
struct ttm_lock {struct ttm_object_file* vt_holder; int /*<<< orphan*/  base; int /*<<< orphan*/  queue; int /*<<< orphan*/  lock; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  TTM_VT_LOCK_PENDING ; 
 int /*<<< orphan*/  FUNC0 (struct ttm_lock*) ; 
 int /*<<< orphan*/  FUNC1 (struct ttm_lock*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct ttm_object_file*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ttm_lock_type ; 
 int /*<<< orphan*/  ttm_vt_lock_remove ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int FUNC9(struct ttm_lock *lock,
		bool interruptible,
		struct ttm_object_file *tfile)
{
	int ret = 0;

	if (interruptible) {
		ret = FUNC7(lock->queue,
					       FUNC0(lock));
		if (FUNC5(ret != 0)) {
			FUNC2(&lock->lock);
			lock->flags &= ~TTM_VT_LOCK_PENDING;
			FUNC8(&lock->queue);
			FUNC3(&lock->lock);
			return ret;
		}
	} else
		FUNC6(lock->queue, FUNC0(lock));

	/*
	 * Add a base-object, the destructor of which will
	 * make sure the lock is released if the client dies
	 * while holding it.
	 */

	ret = FUNC4(tfile, &lock->base, false,
				   ttm_lock_type, &ttm_vt_lock_remove, NULL);
	if (ret)
		(void)FUNC1(lock);
	else
		lock->vt_holder = tfile;

	return ret;
}