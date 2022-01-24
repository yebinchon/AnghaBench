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
struct tty_struct {int flags; int /*<<< orphan*/  name; struct async_struct* driver_data; } ;
struct file {int dummy; } ;
struct async_struct {unsigned char MCR; } ;
struct TYPE_2__ {unsigned char pra; } ;

/* Variables and functions */
 int EIO ; 
 int ENODEV ; 
 unsigned char SER_CTS ; 
 unsigned char SER_DCD ; 
 unsigned char SER_DSR ; 
 unsigned char SER_DTR ; 
 unsigned char SER_RTS ; 
 int TIOCM_CAR ; 
 int TIOCM_CTS ; 
 int TIOCM_DSR ; 
 int TIOCM_DTR ; 
 int TIOCM_RTS ; 
 int TTY_IO_ERROR ; 
 TYPE_1__ ciab ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 scalar_t__ FUNC2 (struct async_struct*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC3(struct tty_struct *tty, struct file *file)
{
	struct async_struct * info = tty->driver_data;
	unsigned char control, status;
	unsigned long flags;

	if (FUNC2(info, tty->name, "rs_ioctl"))
		return -ENODEV;
	if (tty->flags & (1 << TTY_IO_ERROR))
		return -EIO;

	control = info->MCR;
	FUNC1(flags);
	status = ciab.pra;
	FUNC0(flags);
	return    ((control & SER_RTS) ? TIOCM_RTS : 0)
		| ((control & SER_DTR) ? TIOCM_DTR : 0)
		| (!(status  & SER_DCD) ? TIOCM_CAR : 0)
		| (!(status  & SER_DSR) ? TIOCM_DSR : 0)
		| (!(status  & SER_CTS) ? TIOCM_CTS : 0);
}