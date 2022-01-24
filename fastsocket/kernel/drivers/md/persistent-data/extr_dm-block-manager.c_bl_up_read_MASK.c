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
struct block_lock {scalar_t__ count; int /*<<< orphan*/  lock; int /*<<< orphan*/  waiters; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct block_lock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct block_lock*) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct block_lock *lock)
{
	FUNC4(&lock->lock);
	FUNC0(lock->count <= 0);
	FUNC1(lock, current);
	--lock->count;
	if (!FUNC3(&lock->waiters))
		FUNC2(lock);
	FUNC5(&lock->lock);
}