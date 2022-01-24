#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct tty_struct {int count; TYPE_1__* link; TYPE_2__* driver; int /*<<< orphan*/  flags; scalar_t__ packet; int /*<<< orphan*/  write_wait; int /*<<< orphan*/  read_wait; } ;
struct file {int dummy; } ;
struct TYPE_5__ {scalar_t__ subtype; } ;
struct TYPE_4__ {int /*<<< orphan*/  write_wait; int /*<<< orphan*/  read_wait; int /*<<< orphan*/  flags; scalar_t__ packet; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ PTY_TYPE_MASTER ; 
 int /*<<< orphan*/  TTY_OTHER_CLOSED ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_2__* ptm_driver ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct tty_struct *tty, struct file *filp)
{
	FUNC0(!tty);
	if (tty->driver->subtype == PTY_TYPE_MASTER)
		FUNC1(tty->count > 1);
	else {
		if (tty->count > 2)
			return;
	}
	FUNC5(&tty->read_wait);
	FUNC5(&tty->write_wait);
	tty->packet = 0;
	if (!tty->link)
		return;
	tty->link->packet = 0;
	FUNC3(TTY_OTHER_CLOSED, &tty->link->flags);
	FUNC5(&tty->link->read_wait);
	FUNC5(&tty->link->write_wait);
	if (tty->driver->subtype == PTY_TYPE_MASTER) {
		FUNC3(TTY_OTHER_CLOSED, &tty->flags);
#ifdef CONFIG_UNIX98_PTYS
		if (tty->driver == ptm_driver)
			devpts_pty_kill(tty->link);
#endif
		FUNC4(tty->link);
	}
}