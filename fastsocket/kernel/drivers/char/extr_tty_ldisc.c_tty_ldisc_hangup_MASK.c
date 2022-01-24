#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct tty_struct {int /*<<< orphan*/  ldisc_mutex; scalar_t__ ldisc; TYPE_3__* termios; int /*<<< orphan*/  read_wait; int /*<<< orphan*/  write_wait; int /*<<< orphan*/  flags; TYPE_1__* driver; } ;
struct tty_ldisc {TYPE_2__* ops; } ;
struct TYPE_6__ {int /*<<< orphan*/  c_line; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* hangup ) (struct tty_struct*) ;int /*<<< orphan*/  (* write_wakeup ) (struct tty_struct*) ;int /*<<< orphan*/  (* flush_buffer ) (struct tty_struct*) ;} ;
struct TYPE_4__ {int flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  N_TTY ; 
 int /*<<< orphan*/  POLLIN ; 
 int /*<<< orphan*/  POLLOUT ; 
 int /*<<< orphan*/  TTY_DO_WRITE_WAKEUP ; 
 int TTY_DRIVER_RESET_TERMIOS ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC5 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC6 (struct tty_struct*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC9 (struct tty_ldisc*) ; 
 int /*<<< orphan*/  FUNC10 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC11 (struct tty_struct*) ; 
 int FUNC12 (struct tty_struct*,scalar_t__) ; 
 struct tty_ldisc* FUNC13 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC14 (struct tty_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC17(struct tty_struct *tty)
{
	struct tty_ldisc *ld;
	int reset = tty->driver->flags & TTY_DRIVER_RESET_TERMIOS;
	int err = 0;

	/*
	 * FIXME! What are the locking issues here? This may me overdoing
	 * things... This question is especially important now that we've
	 * removed the irqlock.
	 */
	ld = FUNC13(tty);
	if (ld != NULL) {
		/* We may have no line discipline at this point */
		if (ld->ops->flush_buffer)
			ld->ops->flush_buffer(tty);
		FUNC8(tty);
		if ((FUNC7(TTY_DO_WRITE_WAKEUP, &tty->flags)) &&
		    ld->ops->write_wakeup)
			ld->ops->write_wakeup(tty);
		if (ld->ops->hangup)
			ld->ops->hangup(tty);
		FUNC9(ld);
	}
	/*
	 * FIXME: Once we trust the LDISC code better we can wait here for
	 * ldisc completion and fix the driver call race
	 */
	FUNC16(&tty->write_wait, POLLOUT);
	FUNC16(&tty->read_wait, POLLIN);
	/*
	 * Shutdown the current line discipline, and reset it to
	 * N_TTY if need be.
	 *
	 * Avoid racing set_ldisc or tty_ldisc_release
	 */
	FUNC2(&tty->ldisc_mutex);
	FUNC11(tty);
	/* At this point we have a closed ldisc and we want to
	   reopen it. We could defer this to the next open but
	   it means auditing a lot of other paths so this is
	   a FIXME */
	if (tty->ldisc) {	/* Not yet closed */
		if (reset == 0) {

			if (!FUNC14(tty, tty->termios->c_line))
				err = FUNC12(tty, tty->ldisc);
			else
				err = 1;
		}
		/* If the re-open fails or we reset then go to N_TTY. The
		   N_TTY open cannot fail */
		if (reset || err) {
			FUNC0(FUNC14(tty, N_TTY));
			FUNC1(FUNC12(tty, tty->ldisc));
		}
		FUNC10(tty);
	}
	FUNC3(&tty->ldisc_mutex);
	if (reset)
		FUNC15(tty);
}