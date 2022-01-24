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
struct waiter {int wants_write; int /*<<< orphan*/  list; int /*<<< orphan*/  task; } ;
struct block_lock {int count; int /*<<< orphan*/  lock; int /*<<< orphan*/  waiters; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct block_lock*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct block_lock*) ; 
 int /*<<< orphan*/  FUNC2 (struct waiter*) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct block_lock *lock)
{
	int r;
	struct waiter w;

	FUNC7(&lock->lock);
	r = FUNC1(lock);
	if (r) {
		FUNC8(&lock->lock);
		return r;
	}

	if (lock->count == 0 && FUNC5(&lock->waiters)) {
		lock->count = -1;
		FUNC0(lock, current);
		FUNC8(&lock->lock);
		return 0;
	}

	FUNC3(current);
	w.task = current;
	w.wants_write = 1;

	/*
	 * Writers given priority. We know there's only one mutator in the
	 * system, so ignoring the ordering reversal.
	 */
	FUNC4(&w.list, &lock->waiters);
	FUNC8(&lock->lock);

	FUNC2(&w);
	FUNC6(current);

	return 0;
}