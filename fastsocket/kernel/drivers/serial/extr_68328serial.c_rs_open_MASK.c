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
struct tty_struct {int index; struct m68k_serial* driver_data; int /*<<< orphan*/  name; } ;
struct TYPE_2__ {struct tty_struct* tty; } ;
struct m68k_serial {TYPE_1__ port; int /*<<< orphan*/  count; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int NR_PORTS ; 
 int FUNC0 (struct tty_struct*,struct file*,struct m68k_serial*) ; 
 struct m68k_serial* m68k_soft ; 
 scalar_t__ FUNC1 (struct m68k_serial*,int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (struct m68k_serial*) ; 

int FUNC3(struct tty_struct *tty, struct file * filp)
{
	struct m68k_serial	*info;
	int 			retval, line;

	line = tty->index;
	
	if (line >= NR_PORTS || line < 0) /* we have exactly one */
		return -ENODEV;

	info = &m68k_soft[line];

	if (FUNC1(info, tty->name, "rs_open"))
		return -ENODEV;

	info->count++;
	tty->driver_data = info;
	info->port.tty = tty;

	/*
	 * Start up serial port
	 */
	retval = FUNC2(info);
	if (retval)
		return retval;

	return FUNC0(tty, filp, info);
}