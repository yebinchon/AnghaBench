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
struct tty_struct {int /*<<< orphan*/  flags; } ;
struct TYPE_2__ {int flags; struct tty_struct* tty; } ;
struct specialix_port {TYPE_1__ port; scalar_t__ IER; int /*<<< orphan*/ * xmit_buf; int /*<<< orphan*/ * hits; int /*<<< orphan*/  overrun; } ;
struct specialix_board {int /*<<< orphan*/  count; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int ASYNC_INITIALIZED ; 
 scalar_t__ CCR_SOFTRESET ; 
 int /*<<< orphan*/  CD186x_CAR ; 
 int /*<<< orphan*/  CD186x_CCR ; 
 int /*<<< orphan*/  CD186x_IER ; 
 int /*<<< orphan*/  CD186x_MSVDTR ; 
 scalar_t__ FUNC0 (struct tty_struct*) ; 
 int SX_DEBUG_FIFO ; 
 int /*<<< orphan*/  TTY_IO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (struct specialix_board*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (struct specialix_port*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int sx_debug ; 
 int /*<<< orphan*/  FUNC10 (struct specialix_board*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct specialix_board*) ; 
 int /*<<< orphan*/  FUNC12 (struct specialix_board*) ; 

__attribute__((used)) static void FUNC13(struct specialix_board *bp,
						struct specialix_port *port)
{
	struct tty_struct *tty;
	int i;
	unsigned long flags;

	FUNC4();

	if (!(port->port.flags & ASYNC_INITIALIZED)) {
		FUNC5();
		return;
	}

	if (sx_debug & SX_DEBUG_FIFO) {
		FUNC2(SX_DEBUG_FIFO,
			"sx%d: port %d: %ld overruns, FIFO hits [ ",
				FUNC1(bp), FUNC6(port), port->overrun);
		for (i = 0; i < 10; i++)
			FUNC2(SX_DEBUG_FIFO, "%ld ", port->hits[i]);
		FUNC2(SX_DEBUG_FIFO, "].\n");
	}

	if (port->xmit_buf) {
		FUNC3((unsigned long) port->xmit_buf);
		port->xmit_buf = NULL;
	}

	/* Select port */
	FUNC8(&bp->lock, flags);
	FUNC10(bp, CD186x_CAR, FUNC6(port));

	tty = port->port.tty;
	if (tty == NULL || FUNC0(tty)) {
		/* Drop DTR */
		FUNC10(bp, CD186x_MSVDTR, 0);
	}
	FUNC9(&bp->lock, flags);
	/* Reset port */
	FUNC12(bp);
	FUNC8(&bp->lock, flags);
	FUNC10(bp, CD186x_CCR, CCR_SOFTRESET);
	/* Disable all interrupts from this port */
	port->IER = 0;
	FUNC10(bp, CD186x_IER, port->IER);
	FUNC9(&bp->lock, flags);
	if (tty)
		FUNC7(TTY_IO_ERROR, &tty->flags);
	port->port.flags &= ~ASYNC_INITIALIZED;

	if (!bp->count)
		FUNC11(bp);
	FUNC5();
}