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
struct floppy_state {scalar_t__ state; int /*<<< orphan*/  lock; int /*<<< orphan*/  wanted; int /*<<< orphan*/  wait; } ;
typedef  enum swim_state { ____Placeholder_swim_state } swim_state ;

/* Variables and functions */
 int EINTR ; 
 scalar_t__ available ; 
 int /*<<< orphan*/  current ; 
 scalar_t__ idle ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct floppy_state *fs, enum swim_state state,
		      int interruptible)
{
	unsigned long flags;

	FUNC2(&fs->lock, flags);
	if (fs->state != idle) {
		++fs->wanted;
		while (fs->state != available) {
			if (interruptible && FUNC1(current)) {
				--fs->wanted;
				FUNC3(&fs->lock, flags);
				return -EINTR;
			}
			FUNC0(&fs->wait);
		}
		--fs->wanted;
	}
	fs->state = state;
	FUNC3(&fs->lock, flags);
	return 0;
}