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
struct waiter {int /*<<< orphan*/  list; scalar_t__ wants_write; int /*<<< orphan*/  task; } ;
struct block_lock {int /*<<< orphan*/  lock; int /*<<< orphan*/  waiters; int /*<<< orphan*/  count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct block_lock*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct block_lock*) ; 
 int FUNC2 (struct block_lock*) ; 
 int /*<<< orphan*/  FUNC3 (struct waiter*) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct block_lock *lock)
{
	int r;
	struct waiter w;

	FUNC7(&lock->lock);
	r = FUNC2(lock);
	if (r) {
		FUNC8(&lock->lock);
		return r;
	}

	if (FUNC1(lock)) {
		lock->count++;
		FUNC0(lock, current);
		FUNC8(&lock->lock);
		return 0;
	}

	FUNC4(current);

	w.task = current;
	w.wants_write = 0;
	FUNC5(&w.list, &lock->waiters);
	FUNC8(&lock->lock);

	FUNC3(&w);
	FUNC6(current);
	return 0;
}