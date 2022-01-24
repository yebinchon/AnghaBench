#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct tty_struct {int flags; } ;
struct tty_port {int flags; int blocked_open; int /*<<< orphan*/  lock; int /*<<< orphan*/  count; int /*<<< orphan*/  open_wait; int /*<<< orphan*/  close_wait; struct tty_struct* tty; } ;
struct gs_port {struct tty_port port; } ;
struct file {int f_flags; } ;
struct TYPE_4__ {int /*<<< orphan*/  blocked; } ;

/* Variables and functions */
 int ASYNC_CLOSING ; 
 int ASYNC_HUP_NOTIFY ; 
 int ASYNC_INITIALIZED ; 
 int ASYNC_NORMAL_ACTIVE ; 
 scalar_t__ FUNC0 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int EAGAIN ; 
 int ERESTARTSYS ; 
 int /*<<< orphan*/  GS_DEBUG_BTR ; 
 int O_NONBLOCK ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int TTY_IO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC13 (struct file*) ; 
 int FUNC14 (struct tty_port*) ; 
 int /*<<< orphan*/  wait ; 

int FUNC15(void *port_, struct file * filp)
{
	struct gs_port *gp = port_;
	struct tty_port *port = &gp->port;
	FUNC1(wait, current);
	int    retval;
	int    do_clocal = 0;
	int    CD;
	struct tty_struct *tty;
	unsigned long flags;

	FUNC3 ();

	if (!port) return 0;

	tty = port->tty;

	FUNC5 (GS_DEBUG_BTR, "Entering gs_block_till_ready.\n"); 
	/*
	 * If the device is in the middle of being closed, then block
	 * until it's done, and then try again.
	 */
	if (FUNC13(filp) || port->flags & ASYNC_CLOSING) {
		FUNC6(&port->close_wait);
		if (port->flags & ASYNC_HUP_NOTIFY)
			return -EAGAIN;
		else
			return -ERESTARTSYS;
	}

	FUNC5 (GS_DEBUG_BTR, "after hung up\n"); 

	/*
	 * If non-blocking mode is set, or the port is not enabled,
	 * then make the check up front and then exit.
	 */
	if ((filp->f_flags & O_NONBLOCK) ||
	    (tty->flags & (1 << TTY_IO_ERROR))) {
		port->flags |= ASYNC_NORMAL_ACTIVE;
		return 0;
	}

	FUNC5 (GS_DEBUG_BTR, "after nonblock\n"); 
 
	if (FUNC0(tty))
		do_clocal = 1;

	/*
	 * Block waiting for the carrier detect and the line to become
	 * free (i.e., not in use by the callout).  While we are in
	 * this loop, port->count is dropped by one, so that
	 * rs_close() knows when to free things.  We restore it upon
	 * exit, either normal or abnormal.
	 */
	retval = 0;

	FUNC2(&port->open_wait, &wait);

	FUNC5 (GS_DEBUG_BTR, "after add waitq.\n"); 
	FUNC11(&port->lock, flags);
	if (!FUNC13(filp)) {
		port->count--;
	}
	port->blocked_open++;
	FUNC12(&port->lock, flags);
	while (1) {
		CD = FUNC14(port);
		FUNC5 (GS_DEBUG_BTR, "CD is now %d.\n", CD);
		FUNC9 (TASK_INTERRUPTIBLE);
		if (FUNC13(filp) ||
		    !(port->flags & ASYNC_INITIALIZED)) {
			if (port->flags & ASYNC_HUP_NOTIFY)
				retval = -EAGAIN;
			else
				retval = -ERESTARTSYS;
			break;
		}
		if (!(port->flags & ASYNC_CLOSING) &&
		    (do_clocal || CD))
			break;
		FUNC5 (GS_DEBUG_BTR, "signal_pending is now: %d (%lx)\n", 
		(int)FUNC10 (current), *(long*)(&current->blocked)); 
		if (FUNC10(current)) {
			retval = -ERESTARTSYS;
			break;
		}
		FUNC8();
	}
	FUNC5 (GS_DEBUG_BTR, "Got out of the loop. (%d)\n",
		    port->blocked_open);
	FUNC9 (TASK_RUNNING);
	FUNC7(&port->open_wait, &wait);
	
	FUNC11(&port->lock, flags);
	if (!FUNC13(filp)) {
		port->count++;
	}
	port->blocked_open--;
	if (retval == 0)
        	port->flags |= ASYNC_NORMAL_ACTIVE;
	FUNC12(&port->lock, flags);
	FUNC4 ();
	return retval;
}