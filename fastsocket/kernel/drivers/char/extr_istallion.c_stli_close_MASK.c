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
struct tty_struct {int /*<<< orphan*/  flags; TYPE_1__* termios; struct stliport* driver_data; } ;
struct tty_port {int /*<<< orphan*/  flags; } ;
struct stliport {scalar_t__ closing_wait; size_t brdnr; int /*<<< orphan*/  state; int /*<<< orphan*/  asig; struct tty_port port; } ;
struct stlibrd {int dummy; } ;
struct file {int dummy; } ;
typedef  int /*<<< orphan*/  asysigs_t ;
struct TYPE_2__ {int c_cflag; } ;

/* Variables and functions */
 scalar_t__ ASYNC_CLOSING_WAIT_NONE ; 
 int /*<<< orphan*/  ASYNC_INITIALIZED ; 
 int /*<<< orphan*/  A_SETSIGNALS ; 
 int HUPCL ; 
 int /*<<< orphan*/  ST_CMDING ; 
 int /*<<< orphan*/  ST_DOFLUSHRX ; 
 int /*<<< orphan*/  ST_DOSIGS ; 
 int /*<<< orphan*/  ST_RXSTOP ; 
 int /*<<< orphan*/  ST_TXBUSY ; 
 int /*<<< orphan*/  TTY_IO_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 struct stlibrd** stli_brds ; 
 int /*<<< orphan*/  FUNC4 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC5 (struct tty_struct*) ; 
 int /*<<< orphan*/  stli_lock ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct stlibrd*,struct stliport*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct stlibrd*,struct stliport*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 struct tty_struct* stli_txcooktty ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC11 (struct tty_port*,struct tty_struct*) ; 
 scalar_t__ FUNC12 (struct tty_port*,struct tty_struct*,struct file*) ; 
 int /*<<< orphan*/  FUNC13 (struct tty_port*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct tty_struct*,scalar_t__) ; 

__attribute__((used)) static void FUNC15(struct tty_struct *tty, struct file *filp)
{
	struct stlibrd *brdp;
	struct stliport *portp;
	struct tty_port *port;
	unsigned long flags;

	portp = tty->driver_data;
	if (portp == NULL)
		return;
	port = &portp->port;

	if (FUNC12(port, tty, filp) == 0)
		return;

/*
 *	May want to wait for data to drain before closing. The BUSY flag
 *	keeps track of whether we are still transmitting or not. It is
 *	updated by messages from the slave - indicating when all chars
 *	really have drained.
 */
 	FUNC2(&stli_lock, flags);
	if (tty == stli_txcooktty)
		FUNC5(tty);
	FUNC3(&stli_lock, flags);

	/* We end up doing this twice for the moment. This needs looking at
	   eventually. Note we still use portp->closing_wait as a result */
	if (portp->closing_wait != ASYNC_CLOSING_WAIT_NONE)
		FUNC14(tty, portp->closing_wait);

	/* FIXME: port locking here needs attending to */
	port->flags &= ~ASYNC_INITIALIZED;

	brdp = stli_brds[portp->brdnr];
	FUNC7(brdp, portp, 0, 0);
	if (tty->termios->c_cflag & HUPCL) {
		FUNC6(&portp->asig, 0, 0);
		if (FUNC9(ST_CMDING, &portp->state))
			FUNC1(ST_DOSIGS, &portp->state);
		else
			FUNC8(brdp, portp, A_SETSIGNALS, &portp->asig,
				sizeof(asysigs_t), 0);
	}
	FUNC0(ST_TXBUSY, &portp->state);
	FUNC0(ST_RXSTOP, &portp->state);
	FUNC1(TTY_IO_ERROR, &tty->flags);
	FUNC10(tty);
	FUNC1(ST_DOFLUSHRX, &portp->state);
	FUNC4(tty);

	FUNC11(port, tty);
	FUNC13(port, NULL);
}