#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct tty_struct {int index; struct mxser_port* driver_data; } ;
struct TYPE_4__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  count; } ;
struct mxser_port {TYPE_1__ port; int /*<<< orphan*/  ioaddr; } ;
struct file {int dummy; } ;
struct TYPE_5__ {struct mxser_port* ports; } ;

/* Variables and functions */
 int ENODEV ; 
 int MXSER_PORTS ; 
 int MXSER_PORTS_PER_BOARD ; 
 TYPE_3__* mxser_boards ; 
 int FUNC0 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC3 (TYPE_1__*,struct tty_struct*,struct file*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,struct tty_struct*) ; 

__attribute__((used)) static int FUNC5(struct tty_struct *tty, struct file *filp)
{
	struct mxser_port *info;
	unsigned long flags;
	int retval, line;

	line = tty->index;
	if (line == MXSER_PORTS)
		return 0;
	if (line < 0 || line > MXSER_PORTS)
		return -ENODEV;
	info = &mxser_boards[line / MXSER_PORTS_PER_BOARD].ports[line % MXSER_PORTS_PER_BOARD];
	if (!info->ioaddr)
		return -ENODEV;

	tty->driver_data = info;
	FUNC4(&info->port, tty);
	/*
	 * Start up serial port
	 */
	FUNC1(&info->port.lock, flags);
	info->port.count++;
	FUNC2(&info->port.lock, flags);
	retval = FUNC0(tty);
	if (retval)
		return retval;

	retval = FUNC3(&info->port, tty, filp);
	if (retval)
		return retval;

	return 0;
}