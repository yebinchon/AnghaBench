#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct tty_struct {int /*<<< orphan*/  ldisc_mutex; int /*<<< orphan*/ * ldisc; } ;

/* Variables and functions */
 int /*<<< orphan*/  N_TTY ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct tty_struct*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct tty_struct*,int /*<<< orphan*/ ) ; 

void FUNC7(struct tty_struct *tty, struct tty_struct *o_tty)
{
	/*
	 * Prevent flush_to_ldisc() from rescheduling the work for later.  Then
	 * kill any delayed work. As this is the final close it does not
	 * race with the set_ldisc code path.
	 */

	FUNC4(tty);
	FUNC0();

	FUNC1(&tty->ldisc_mutex);
	/*
	 * Now kill off the ldisc
	 */
	FUNC3(tty, tty->ldisc);
	FUNC5(tty->ldisc);
	/* Force an oops if we mess this up */
	tty->ldisc = NULL;

	/* Ensure the next open requests the N_TTY ldisc */
	FUNC6(tty, N_TTY);
	FUNC2(&tty->ldisc_mutex);

	/* This will need doing differently if we need to lock */
	if (o_tty)
		FUNC7(o_tty, NULL);

	/* And the memory resources remaining (buffers, termios) will be
	   disposed of when the kref hits zero */
}