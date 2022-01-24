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
struct block_lock {int /*<<< orphan*/  lock; int /*<<< orphan*/  waiters; scalar_t__ count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct block_lock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct block_lock*) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct block_lock *lock)
{
	FUNC3(&lock->lock);
	FUNC0(lock, current);
	lock->count = 0;
	if (!FUNC2(&lock->waiters))
		FUNC1(lock);
	FUNC4(&lock->lock);
}