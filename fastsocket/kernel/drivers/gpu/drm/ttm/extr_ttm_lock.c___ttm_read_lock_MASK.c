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
struct ttm_lock {scalar_t__ rw; scalar_t__ flags; int /*<<< orphan*/  lock; int /*<<< orphan*/  signal; int /*<<< orphan*/  kill_takers; } ;

/* Variables and functions */
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC4(struct ttm_lock *lock)
{
	bool locked = false;

	FUNC1(&lock->lock);
	if (FUNC3(lock->kill_takers)) {
		FUNC0(lock->signal, current, 0);
		FUNC2(&lock->lock);
		return false;
	}
	if (lock->rw >= 0 && lock->flags == 0) {
		++lock->rw;
		locked = true;
	}
	FUNC2(&lock->lock);
	return locked;
}