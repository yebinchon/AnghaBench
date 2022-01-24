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
struct tty_struct {int flags; } ;
struct TYPE_2__ {int flags; int /*<<< orphan*/  blocked_open; int /*<<< orphan*/  count; int /*<<< orphan*/  open_wait; int /*<<< orphan*/  close_wait; } ;
struct specialix_port {TYPE_1__ port; int /*<<< orphan*/  lock; int /*<<< orphan*/  MSVR; } ;
struct specialix_board {int /*<<< orphan*/  lock; } ;
struct file {int f_flags; } ;

/* Variables and functions */
 int ASYNC_CLOSING ; 
 int ASYNC_HUP_NOTIFY ; 
 int ASYNC_INITIALIZED ; 
 int ASYNC_NORMAL_ACTIVE ; 
 int /*<<< orphan*/  CD186x_CAR ; 
 int /*<<< orphan*/  CD186x_MSVR ; 
 scalar_t__ FUNC0 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EAGAIN ; 
 int ERESTARTSYS ; 
 int MSVR_CD ; 
 int /*<<< orphan*/  MSVR_DTR ; 
 int O_NONBLOCK ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int TTY_IO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct specialix_board* FUNC6 (struct specialix_port*) ; 
 int /*<<< orphan*/  FUNC7 (struct specialix_port*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC14 (struct tty_struct*) ; 
 int FUNC15 (struct specialix_board*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct specialix_board*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (struct file*) ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static int FUNC18(struct tty_struct *tty, struct file *filp,
						struct specialix_port *port)
{
	FUNC1(wait,  current);
	struct specialix_board *bp = FUNC6(port);
	int    retval;
	int    do_clocal = 0;
	int    CD;
	unsigned long flags;

	FUNC3();

	/*
	 * If the device is in the middle of being closed, then block
	 * until it's done, and then try again.
	 */
	if (FUNC17(filp) || port->port.flags & ASYNC_CLOSING) {
		FUNC5(&port->port.close_wait);
		if (port->port.flags & ASYNC_HUP_NOTIFY) {
			FUNC4();
			return -EAGAIN;
		} else {
			FUNC4();
			return -ERESTARTSYS;
		}
	}

	/*
	 * If non-blocking mode is set, or the port is not enabled,
	 * then make the check up front and then exit.
	 */
	if ((filp->f_flags & O_NONBLOCK) ||
	    (tty->flags & (1 << TTY_IO_ERROR))) {
		port->port.flags |= ASYNC_NORMAL_ACTIVE;
		FUNC4();
		return 0;
	}

	if (FUNC0(tty))
		do_clocal = 1;

	/*
	 * Block waiting for the carrier detect and the line to become
	 * free (i.e., not in use by the callout).  While we are in
	 * this loop, info->count is dropped by one, so that
	 * rs_close() knows when to free things.  We restore it upon
	 * exit, either normal or abnormal.
	 */
	retval = 0;
	FUNC2(&port->port.open_wait, &wait);
	FUNC12(&port->lock, flags);
	if (!FUNC17(filp))
		port->port.count--;
	FUNC13(&port->lock, flags);
	port->port.blocked_open++;
	while (1) {
		FUNC12(&bp->lock, flags);
		FUNC16(bp, CD186x_CAR, FUNC7(port));
		CD = FUNC15(bp, CD186x_MSVR) & MSVR_CD;
		if (FUNC14(tty)) {
			/* Activate RTS */
			port->MSVR |= MSVR_DTR;		/* WTF? */
			FUNC16(bp, CD186x_MSVR, port->MSVR);
		} else {
			/* Activate DTR */
			port->MSVR |= MSVR_DTR;
			FUNC16(bp, CD186x_MSVR, port->MSVR);
		}
		FUNC13(&bp->lock, flags);
		FUNC10(TASK_INTERRUPTIBLE);
		if (FUNC17(filp) ||
		    !(port->port.flags & ASYNC_INITIALIZED)) {
			if (port->port.flags & ASYNC_HUP_NOTIFY)
				retval = -EAGAIN;
			else
				retval = -ERESTARTSYS;
			break;
		}
		if (!(port->port.flags & ASYNC_CLOSING) &&
		    (do_clocal || CD))
			break;
		if (FUNC11(current)) {
			retval = -ERESTARTSYS;
			break;
		}
		FUNC9();
	}

	FUNC10(TASK_RUNNING);
	FUNC8(&port->port.open_wait, &wait);
	FUNC12(&port->lock, flags);
	if (!FUNC17(filp))
		port->port.count++;
	port->port.blocked_open--;
	FUNC13(&port->lock, flags);
	if (retval) {
		FUNC4();
		return retval;
	}

	port->port.flags |= ASYNC_NORMAL_ACTIVE;
	FUNC4();
	return 0;
}