#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {void (* function ) (unsigned long) ;unsigned long data; scalar_t__ expires; } ;
struct floppy_state {int timeout_pending; int /*<<< orphan*/  lock; TYPE_1__ timeout; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct floppy_state *fs, int nticks,
			void (*proc)(unsigned long))
{
	unsigned long flags;

	FUNC2(&fs->lock, flags);
	if (fs->timeout_pending)
		FUNC1(&fs->timeout);
	fs->timeout.expires = jiffies + nticks;
	fs->timeout.function = proc;
	fs->timeout.data = (unsigned long) fs;
	FUNC0(&fs->timeout);
	fs->timeout_pending = 1;
	FUNC3(&fs->lock, flags);
}