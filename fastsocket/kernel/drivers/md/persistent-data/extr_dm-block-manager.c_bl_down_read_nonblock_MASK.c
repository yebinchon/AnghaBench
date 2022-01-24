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
struct block_lock {int /*<<< orphan*/  lock; int /*<<< orphan*/  count; } ;

/* Variables and functions */
 int EWOULDBLOCK ; 
 int /*<<< orphan*/  FUNC0 (struct block_lock*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct block_lock*) ; 
 int FUNC2 (struct block_lock*) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct block_lock *lock)
{
	int r;

	FUNC3(&lock->lock);
	r = FUNC2(lock);
	if (r)
		goto out;

	if (FUNC1(lock)) {
		lock->count++;
		FUNC0(lock, current);
		r = 0;
	} else
		r = -EWOULDBLOCK;

out:
	FUNC4(&lock->lock);
	return r;
}