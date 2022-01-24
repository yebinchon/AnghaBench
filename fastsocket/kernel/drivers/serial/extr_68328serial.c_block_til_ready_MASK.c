#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct tty_struct {int flags; TYPE_1__* termios; } ;
struct m68k_serial {int flags; int /*<<< orphan*/  blocked_open; int /*<<< orphan*/  count; int /*<<< orphan*/  open_wait; int /*<<< orphan*/  close_wait; } ;
struct file {int f_flags; } ;
struct TYPE_6__ {int /*<<< orphan*/  state; } ;
struct TYPE_5__ {int c_cflag; } ;

/* Variables and functions */
 int CLOCAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int EAGAIN ; 
 int ERESTARTSYS ; 
 int O_NONBLOCK ; 
 int S_CLOSING ; 
 int S_HUP_NOTIFY ; 
 int S_INITIALIZED ; 
 int S_NORMAL_ACTIVE ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int TTY_IO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct m68k_serial*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ FUNC8 (TYPE_2__*) ; 
 scalar_t__ FUNC9 (struct file*) ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static int FUNC10(struct tty_struct *tty, struct file * filp,
			   struct m68k_serial *info)
{
	FUNC0(wait, current);
	int		retval;
	int		do_clocal = 0;

	/*
	 * If the device is in the middle of being closed, then block
	 * until it's done, and then try again.
	 */
	if (info->flags & S_CLOSING) {
		FUNC2(&info->close_wait);
#ifdef SERIAL_DO_RESTART
		if (info->flags & S_HUP_NOTIFY)
			return -EAGAIN;
		else
			return -ERESTARTSYS;
#else
		return -EAGAIN;
#endif
	}
	
	/*
	 * If non-blocking mode is set, or the port is not enabled,
	 * then make the check up front and then exit.
	 */
	if ((filp->f_flags & O_NONBLOCK) ||
	    (tty->flags & (1 << TTY_IO_ERROR))) {
		info->flags |= S_NORMAL_ACTIVE;
		return 0;
	}

	if (tty->termios->c_cflag & CLOCAL)
		do_clocal = 1;

	/*
	 * Block waiting for the carrier detect and the line to become
	 * free (i.e., not in use by the callout).  While we are in
	 * this loop, info->count is dropped by one, so that
	 * rs_close() knows when to free things.  We restore it upon
	 * exit, either normal or abnormal.
	 */
	retval = 0;
	FUNC1(&info->open_wait, &wait);

	info->count--;
	info->blocked_open++;
	while (1) {
		FUNC3();
		FUNC5(info, 1);
		FUNC4();
		current->state = TASK_INTERRUPTIBLE;
		if (FUNC9(filp) ||
		    !(info->flags & S_INITIALIZED)) {
#ifdef SERIAL_DO_RESTART
			if (info->flags & S_HUP_NOTIFY)
				retval = -EAGAIN;
			else
				retval = -ERESTARTSYS;	
#else
			retval = -EAGAIN;
#endif
			break;
		}
		if (!(info->flags & S_CLOSING) && do_clocal)
			break;
                if (FUNC8(current)) {
			retval = -ERESTARTSYS;
			break;
		}
		FUNC7();
	}
	current->state = TASK_RUNNING;
	FUNC6(&info->open_wait, &wait);
	if (!FUNC9(filp))
		info->count++;
	info->blocked_open--;

	if (retval)
		return retval;
	info->flags |= S_NORMAL_ACTIVE;
	return 0;
}