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
struct tty_struct {int /*<<< orphan*/  flags; TYPE_1__* link; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int count; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int EIO ; 
 int ENODEV ; 
 int /*<<< orphan*/  TTY_OTHER_CLOSED ; 
 int /*<<< orphan*/  TTY_PTY_LOCK ; 
 int /*<<< orphan*/  TTY_THROTTLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct tty_struct *tty, struct file *filp)
{
	int	retval = -ENODEV;

	if (!tty || !tty->link)
		goto out;

	retval = -EIO;
	if (FUNC2(TTY_OTHER_CLOSED, &tty->flags))
		goto out;
	if (FUNC2(TTY_PTY_LOCK, &tty->link->flags))
		goto out;
	if (tty->link->count != 1)
		goto out;

	FUNC0(TTY_OTHER_CLOSED, &tty->link->flags);
	FUNC1(TTY_THROTTLED, &tty->flags);
	retval = 0;
out:
	return retval;
}