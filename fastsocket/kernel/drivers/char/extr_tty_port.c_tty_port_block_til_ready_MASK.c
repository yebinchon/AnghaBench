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
struct tty_struct {int flags; TYPE_1__* termios; } ;
struct tty_port {int flags; int /*<<< orphan*/  lock; int /*<<< orphan*/  blocked_open; int /*<<< orphan*/  count; int /*<<< orphan*/  open_wait; int /*<<< orphan*/  close_wait; } ;
struct file {int f_flags; } ;
struct TYPE_2__ {int c_cflag; } ;

/* Variables and functions */
 int ASYNC_CLOSING ; 
 int ASYNC_HUP_NOTIFY ; 
 int ASYNC_INITIALIZED ; 
 int ASYNC_NORMAL_ACTIVE ; 
 int CBAUD ; 
 scalar_t__ FUNC0 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int EAGAIN ; 
 int ERESTARTSYS ; 
 int O_NONBLOCK ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int TTY_IO_ERROR ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC8 (struct file*) ; 
 int FUNC9 (struct tty_port*) ; 
 int /*<<< orphan*/  FUNC10 (struct tty_port*) ; 
 int /*<<< orphan*/  wait ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int) ; 

int FUNC12(struct tty_port *port,
				struct tty_struct *tty, struct file *filp)
{
	int do_clocal = 0, retval;
	unsigned long flags;
	FUNC1(wait);
	int cd;

	/* block if port is in the process of being closed */
	if (FUNC8(filp) || port->flags & ASYNC_CLOSING) {
		FUNC11(port->close_wait,
				!(port->flags & ASYNC_CLOSING));
		if (port->flags & ASYNC_HUP_NOTIFY)
			return -EAGAIN;
		else
			return -ERESTARTSYS;
	}

	/* if non-blocking mode is set we can pass directly to open unless
	   the port has just hung up or is in another error state */
	if (tty->flags & (1 << TTY_IO_ERROR)) {
		port->flags |= ASYNC_NORMAL_ACTIVE;
		return 0;
	}
	if (filp->f_flags & O_NONBLOCK) {
		/* Indicate we are open */
		if (tty->termios->c_cflag & CBAUD)
			FUNC10(port);
		port->flags |= ASYNC_NORMAL_ACTIVE;
		return 0;
	}

	if (FUNC0(tty))
		do_clocal = 1;

	/* Block waiting until we can proceed. We may need to wait for the
	   carrier, but we must also wait for any close that is in progress
	   before the next open may complete */

	retval = 0;

	/* The port lock protects the port counts */
	FUNC6(&port->lock, flags);
	if (!FUNC8(filp))
		port->count--;
	port->blocked_open++;
	FUNC7(&port->lock, flags);

	while (1) {
		/* Indicate we are open */
		if (tty->termios->c_cflag & CBAUD)
			FUNC10(port);

		FUNC3(&port->open_wait, &wait, TASK_INTERRUPTIBLE);
		/* Check for a hangup or uninitialised port. Return accordingly */
		if (FUNC8(filp) || !(port->flags & ASYNC_INITIALIZED)) {
			if (port->flags & ASYNC_HUP_NOTIFY)
				retval = -EAGAIN;
			else
				retval = -ERESTARTSYS;
			break;
		}
		/* Probe the carrier. For devices with no carrier detect this
		   will always return true */
		cd = FUNC9(port);
		if (!(port->flags & ASYNC_CLOSING) &&
				(do_clocal || cd))
			break;
		if (FUNC5(current)) {
			retval = -ERESTARTSYS;
			break;
		}
		FUNC4();
	}
	FUNC2(&port->open_wait, &wait);

	/* Update counts. A parallel hangup will have set count to zero and
	   we must not mess that up further */
	FUNC6(&port->lock, flags);
	if (!FUNC8(filp))
		port->count++;
	port->blocked_open--;
	if (retval == 0)
		port->flags |= ASYNC_NORMAL_ACTIVE;
	FUNC7(&port->lock, flags);
	return retval;
	
}