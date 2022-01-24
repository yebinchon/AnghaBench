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
struct TYPE_4__ {int /*<<< orphan*/  (* chars_in_buffer ) (struct tty_struct*) ;} ;
struct tty_struct {TYPE_1__* termios; int /*<<< orphan*/  name; TYPE_2__ ldisc; struct async_struct* driver_data; } ;
struct async_struct {int /*<<< orphan*/  MCR; scalar_t__ x_char; } ;
struct TYPE_3__ {int c_cflag; } ;

/* Variables and functions */
 int CRTSCTS ; 
 scalar_t__ FUNC0 (struct tty_struct*) ; 
 int /*<<< orphan*/  SER_RTS ; 
 int /*<<< orphan*/  FUNC1 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct tty_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct async_struct*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC9 (struct tty_struct*,char*) ; 

__attribute__((used)) static void FUNC10(struct tty_struct * tty)
{
	struct async_struct *info = tty->driver_data;
	unsigned long flags;
#ifdef SERIAL_DEBUG_THROTTLE
	char	buf[64];

	printk("unthrottle %s: %d....\n", tty_name(tty, buf),
	       tty->ldisc.chars_in_buffer(tty));
#endif

	if (FUNC7(info, tty->name, "rs_unthrottle"))
		return;

	if (FUNC0(tty)) {
		if (info->x_char)
			info->x_char = 0;
		else
			FUNC5(tty, FUNC1(tty));
	}
	if (tty->termios->c_cflag & CRTSCTS)
		info->MCR |= SER_RTS;
	FUNC3(flags);
	FUNC6(info->MCR);
	FUNC2(flags);
}