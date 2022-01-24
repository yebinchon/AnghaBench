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
struct tty_struct {scalar_t__ flow_change; int /*<<< orphan*/  termios_mutex; TYPE_1__* ops; int /*<<< orphan*/  flags; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* unthrottle ) (struct tty_struct*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  TTY_THROTTLED ; 
 scalar_t__ TTY_UNTHROTTLE_SAFE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct tty_struct*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC5(struct tty_struct *tty)
{
	int ret = 0;

	FUNC1(&tty->termios_mutex);
	if (FUNC4(TTY_THROTTLED, &tty->flags)) {
		if (tty->flow_change != TTY_UNTHROTTLE_SAFE)
			ret = 1;
		else {
			FUNC0(TTY_THROTTLED, &tty->flags);
			if (tty->ops->unthrottle)
				tty->ops->unthrottle(tty);
		}
	}
	FUNC2(&tty->termios_mutex);

	return ret;
}