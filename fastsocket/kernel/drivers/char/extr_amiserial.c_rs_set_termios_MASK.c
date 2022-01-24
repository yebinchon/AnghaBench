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
struct tty_struct {TYPE_1__* termios; scalar_t__ hw_stopped; int /*<<< orphan*/  flags; struct async_struct* driver_data; } ;
struct ktermios {unsigned int c_cflag; } ;
struct async_struct {int MCR; int /*<<< orphan*/  open_wait; } ;
struct TYPE_2__ {unsigned int c_cflag; } ;

/* Variables and functions */
 unsigned int CBAUD ; 
 int CLOCAL ; 
 int CRTSCTS ; 
 int SER_DTR ; 
 int SER_RTS ; 
 int /*<<< orphan*/  TTY_THROTTLED ; 
 int /*<<< orphan*/  FUNC0 (struct async_struct*,struct ktermios*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct tty_struct *tty, struct ktermios *old_termios)
{
	struct async_struct *info = tty->driver_data;
	unsigned long flags;
	unsigned int cflag = tty->termios->c_cflag;

	FUNC0(info, old_termios);

	/* Handle transition to B0 status */
	if ((old_termios->c_cflag & CBAUD) &&
	    !(cflag & CBAUD)) {
		info->MCR &= ~(SER_DTR|SER_RTS);
		FUNC2(flags);
		FUNC4(info->MCR);
		FUNC1(flags);
	}

	/* Handle transition away from B0 status */
	if (!(old_termios->c_cflag & CBAUD) &&
	    (cflag & CBAUD)) {
		info->MCR |= SER_DTR;
		if (!(tty->termios->c_cflag & CRTSCTS) || 
		    !FUNC5(TTY_THROTTLED, &tty->flags)) {
			info->MCR |= SER_RTS;
		}
		FUNC2(flags);
		FUNC4(info->MCR);
		FUNC1(flags);
	}

	/* Handle turning off CRTSCTS */
	if ((old_termios->c_cflag & CRTSCTS) &&
	    !(tty->termios->c_cflag & CRTSCTS)) {
		tty->hw_stopped = 0;
		FUNC3(tty);
	}

#if 0
	/*
	 * No need to wake up processes in open wait, since they
	 * sample the CLOCAL flag once, and don't recheck it.
	 * XXX  It's not clear whether the current behavior is correct
	 * or not.  Hence, this may change.....
	 */
	if (!(old_termios->c_cflag & CLOCAL) &&
	    (tty->termios->c_cflag & CLOCAL))
		wake_up_interruptible(&info->open_wait);
#endif
}