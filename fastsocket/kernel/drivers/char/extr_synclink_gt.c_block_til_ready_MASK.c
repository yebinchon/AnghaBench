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
struct tty_struct {int flags; TYPE_2__* driver; TYPE_1__* termios; } ;
struct tty_port {int flags; int /*<<< orphan*/  blocked_open; int /*<<< orphan*/  count; int /*<<< orphan*/  open_wait; } ;
struct slgt_info {int /*<<< orphan*/  lock; struct tty_port port; } ;
struct file {int f_flags; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;
struct TYPE_3__ {int c_cflag; } ;

/* Variables and functions */
 int ASYNC_CLOSING ; 
 int ASYNC_HUP_NOTIFY ; 
 int ASYNC_INITIALIZED ; 
 int ASYNC_NORMAL_ACTIVE ; 
 int CBAUD ; 
 int CLOCAL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EAGAIN ; 
 int ERESTARTSYS ; 
 int O_NONBLOCK ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int TTY_IO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC9 (struct file*) ; 
 int FUNC10 (struct tty_port*) ; 
 int /*<<< orphan*/  FUNC11 (struct tty_port*) ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static int FUNC12(struct tty_struct *tty, struct file *filp,
			   struct slgt_info *info)
{
	FUNC1(wait, current);
	int		retval;
	bool		do_clocal = false;
	bool		extra_count = false;
	unsigned long	flags;
	int		cd;
	struct tty_port *port = &info->port;

	FUNC0(("%s block_til_ready\n", tty->driver->name));

	if (filp->f_flags & O_NONBLOCK || tty->flags & (1 << TTY_IO_ERROR)){
		/* nonblock mode is set or port is not enabled */
		port->flags |= ASYNC_NORMAL_ACTIVE;
		return 0;
	}

	if (tty->termios->c_cflag & CLOCAL)
		do_clocal = true;

	/* Wait for carrier detect and the line to become
	 * free (i.e., not in use by the callout).  While we are in
	 * this loop, port->count is dropped by one, so that
	 * close() knows when to free things.  We restore it upon
	 * exit, either normal or abnormal.
	 */

	retval = 0;
	FUNC2(&port->open_wait, &wait);

	FUNC7(&info->lock, flags);
	if (!FUNC9(filp)) {
		extra_count = true;
		port->count--;
	}
	FUNC8(&info->lock, flags);
	port->blocked_open++;

	while (1) {
		if ((tty->termios->c_cflag & CBAUD))
			FUNC11(port);

		FUNC5(TASK_INTERRUPTIBLE);

		if (FUNC9(filp) || !(port->flags & ASYNC_INITIALIZED)){
			retval = (port->flags & ASYNC_HUP_NOTIFY) ?
					-EAGAIN : -ERESTARTSYS;
			break;
		}

		cd = FUNC10(port);

 		if (!(port->flags & ASYNC_CLOSING) && (do_clocal || cd ))
 			break;

		if (FUNC6(current)) {
			retval = -ERESTARTSYS;
			break;
		}

		FUNC0(("%s block_til_ready wait\n", tty->driver->name));
		FUNC4();
	}

	FUNC5(TASK_RUNNING);
	FUNC3(&port->open_wait, &wait);

	if (extra_count)
		port->count++;
	port->blocked_open--;

	if (!retval)
		port->flags |= ASYNC_NORMAL_ACTIVE;

	FUNC0(("%s block_til_ready ready, rc=%d\n", tty->driver->name, retval));
	return retval;
}