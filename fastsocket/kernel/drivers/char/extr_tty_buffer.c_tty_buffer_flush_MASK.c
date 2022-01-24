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
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;
struct tty_struct {TYPE_1__ buf; int /*<<< orphan*/  flags; int /*<<< orphan*/  read_wait; } ;

/* Variables and functions */
 int /*<<< orphan*/  TTY_FLUSHING ; 
 int /*<<< orphan*/  TTY_FLUSHPENDING ; 
 int /*<<< orphan*/  FUNC0 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 

void FUNC6(struct tty_struct *tty)
{
	unsigned long flags;
	FUNC2(&tty->buf.lock, flags);

	/* If the data is being pushed to the tty layer then we can't
	   process it here. Instead set a flag and the flush_to_ldisc
	   path will process the flush request before it exits */
	if (FUNC4(TTY_FLUSHING, &tty->flags)) {
		FUNC1(TTY_FLUSHPENDING, &tty->flags);
		FUNC3(&tty->buf.lock, flags);
		FUNC5(tty->read_wait,
				FUNC4(TTY_FLUSHPENDING, &tty->flags) == 0);
		return;
	} else
		FUNC0(tty);
	FUNC3(&tty->buf.lock, flags);
}