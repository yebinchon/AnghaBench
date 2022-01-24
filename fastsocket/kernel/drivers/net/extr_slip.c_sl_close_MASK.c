#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct slip {int /*<<< orphan*/  lock; scalar_t__ xleft; scalar_t__ rcount; TYPE_1__* tty; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  TTY_DO_WRITE_WAKEUP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct slip* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(struct net_device *dev)
{
	struct slip *sl = FUNC1(dev);

	FUNC3(&sl->lock);
	if (sl->tty)
		/* TTY discipline is running. */
		FUNC0(TTY_DO_WRITE_WAKEUP, &sl->tty->flags);
	FUNC2(dev);
	sl->rcount   = 0;
	sl->xleft    = 0;
	FUNC4(&sl->lock);

	return 0;
}