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
struct tty_struct {int index; int name; int low_latency; struct async_struct* driver_data; } ;
struct file {int dummy; } ;
struct async_struct {int flags; int /*<<< orphan*/  close_wait; struct tty_struct* tty; TYPE_1__* state; } ;
struct TYPE_2__ {int /*<<< orphan*/  count; } ;

/* Variables and functions */
 int ASYNC_CLOSING ; 
 int ASYNC_HUP_NOTIFY ; 
 int ASYNC_LOW_LATENCY ; 
 int EAGAIN ; 
 int ENODEV ; 
 int ERESTARTSYS ; 
 int NR_PORTS ; 
 int FUNC0 (struct tty_struct*,struct file*,struct async_struct*) ; 
 int FUNC1 (int,struct async_struct**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,...) ; 
 scalar_t__ FUNC4 (struct async_struct*,int,char*) ; 
 int FUNC5 (struct async_struct*) ; 
 scalar_t__ FUNC6 (struct file*) ; 

__attribute__((used)) static int FUNC7(struct tty_struct *tty, struct file * filp)
{
	struct async_struct	*info;
	int 			retval, line;

	line = tty->index;
	if ((line < 0) || (line >= NR_PORTS)) {
		return -ENODEV;
	}
	retval = FUNC1(line, &info);
	if (retval) {
		return retval;
	}
	tty->driver_data = info;
	info->tty = tty;
	if (FUNC4(info, tty->name, "rs_open"))
		return -ENODEV;

#ifdef SERIAL_DEBUG_OPEN
	printk("rs_open %s, count = %d\n", tty->name, info->state->count);
#endif
	info->tty->low_latency = (info->flags & ASYNC_LOW_LATENCY) ? 1 : 0;

	/*
	 * If the port is the middle of closing, bail out now
	 */
	if (FUNC6(filp) ||
	    (info->flags & ASYNC_CLOSING)) {
		if (info->flags & ASYNC_CLOSING)
			FUNC2(&info->close_wait);
#ifdef SERIAL_DO_RESTART
		return ((info->flags & ASYNC_HUP_NOTIFY) ?
			-EAGAIN : -ERESTARTSYS);
#else
		return -EAGAIN;
#endif
	}

	/*
	 * Start up serial port
	 */
	retval = FUNC5(info);
	if (retval) {
		return retval;
	}

	retval = FUNC0(tty, filp, info);
	if (retval) {
#ifdef SERIAL_DEBUG_OPEN
		printk("rs_open returning after block_til_ready with %d\n",
		       retval);
#endif
		return retval;
	}

#ifdef SERIAL_DEBUG_OPEN
	printk("rs_open %s successful...", tty->name);
#endif
	return 0;
}