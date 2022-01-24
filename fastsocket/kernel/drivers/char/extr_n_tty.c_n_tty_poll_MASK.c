#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct tty_struct {int minimum_to_wake; TYPE_2__* ops; int /*<<< orphan*/  flags; TYPE_1__* link; scalar_t__ packet; int /*<<< orphan*/  write_wait; int /*<<< orphan*/  read_wait; } ;
struct file {int dummy; } ;
typedef  int /*<<< orphan*/  poll_table ;
struct TYPE_4__ {scalar_t__ write; } ;
struct TYPE_3__ {scalar_t__ ctrl_status; } ;

/* Variables and functions */
 int FUNC0 (struct tty_struct*) ; 
 unsigned int POLLHUP ; 
 unsigned int POLLIN ; 
 unsigned int POLLOUT ; 
 unsigned int POLLPRI ; 
 unsigned int POLLRDNORM ; 
 unsigned int POLLWRNORM ; 
 scalar_t__ FUNC1 (struct tty_struct*) ; 
 int /*<<< orphan*/  TTY_OTHER_CLOSED ; 
 scalar_t__ WAKEUP_CHARS ; 
 scalar_t__ FUNC2 (struct tty_struct*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct file*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct tty_struct*) ; 
 scalar_t__ FUNC6 (struct file*) ; 
 int /*<<< orphan*/  FUNC7 (struct tty_struct*) ; 
 scalar_t__ FUNC8 (struct tty_struct*) ; 

__attribute__((used)) static unsigned int FUNC9(struct tty_struct *tty, struct file *file,
							poll_table *wait)
{
	unsigned int mask = 0;

	FUNC3(file, &tty->read_wait, wait);
	FUNC3(file, &tty->write_wait, wait);
	if (FUNC2(tty, FUNC1(tty) ? 0 : FUNC0(tty)))
		mask |= POLLIN | POLLRDNORM;
	if (tty->packet && tty->link->ctrl_status)
		mask |= POLLPRI | POLLIN | POLLRDNORM;
	if (FUNC4(TTY_OTHER_CLOSED, &tty->flags))
		mask |= POLLHUP;
	if (FUNC6(file))
		mask |= POLLHUP;
	if (!(mask & (POLLHUP | POLLIN | POLLRDNORM))) {
		if (FUNC0(tty) && !FUNC1(tty))
			tty->minimum_to_wake = FUNC0(tty);
		else
			tty->minimum_to_wake = 1;
	}
	if (tty->ops->write && !FUNC7(tty) &&
			FUNC5(tty) < WAKEUP_CHARS &&
			FUNC8(tty) > 0)
		mask |= POLLOUT | POLLWRNORM;
	return mask;
}