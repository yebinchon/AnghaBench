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
struct winsize {int dummy; } ;
struct tty_struct {int /*<<< orphan*/  termios_mutex; struct winsize winsize; int /*<<< orphan*/  ctrl_lock; int /*<<< orphan*/  pgrp; } ;
struct pid {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SIGWINCH ; 
 struct pid* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pid*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct winsize*,struct winsize*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct pid*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC8(struct tty_struct *tty, struct winsize *ws)
{
	struct pid *pgrp;
	unsigned long flags;

	/* Lock the tty */
	FUNC3(&tty->termios_mutex);
	if (!FUNC2(ws, &tty->winsize, sizeof(*ws)))
		goto done;
	/* Get the PID values and reference them so we can
	   avoid holding the tty ctrl lock while sending signals */
	FUNC6(&tty->ctrl_lock, flags);
	pgrp = FUNC0(tty->pgrp);
	FUNC7(&tty->ctrl_lock, flags);

	if (pgrp)
		FUNC1(pgrp, SIGWINCH, 1);
	FUNC5(pgrp);

	tty->winsize = *ws;
done:
	FUNC4(&tty->termios_mutex);
	return 0;
}