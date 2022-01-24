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
struct TYPE_6__ {int /*<<< orphan*/ * buf; } ;
struct tty_port {int /*<<< orphan*/  delta_msr_wait; int /*<<< orphan*/  flags; struct tty_struct* tty; } ;
struct uart_state {TYPE_3__ xmit; int /*<<< orphan*/  tlet; struct tty_port port; struct uart_port* uart_port; } ;
struct uart_port {int /*<<< orphan*/  irq; TYPE_2__* ops; } ;
struct tty_struct {TYPE_1__* termios; int /*<<< orphan*/  flags; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* shutdown ) (struct uart_port*) ;} ;
struct TYPE_4__ {int c_cflag; } ;

/* Variables and functions */
 int /*<<< orphan*/  ASYNCB_INITIALIZED ; 
 int HUPCL ; 
 int TIOCM_DTR ; 
 int TIOCM_RTS ; 
 int /*<<< orphan*/  TTY_IO_ERROR ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct uart_port*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct uart_state *state)
{
	struct uart_port *uport = state->uart_port;
	struct tty_port *port = &state->port;
	struct tty_struct *tty = port->tty;

	/*
	 * Set the TTY IO error marker
	 */
	if (tty)
		FUNC1(TTY_IO_ERROR, &tty->flags);

	if (FUNC5(ASYNCB_INITIALIZED, &port->flags)) {
		/*
		 * Turn off DTR and RTS early.
		 */
		if (!tty || (tty->termios->c_cflag & HUPCL))
			FUNC6(uport, TIOCM_DTR | TIOCM_RTS);

		/*
		 * clear delta_msr_wait queue to avoid mem leaks: we may free
		 * the irq here so the queue might never be woken up.  Note
		 * that we won't end up waiting on delta_msr_wait again since
		 * any outstanding file descriptors should be pointing at
		 * hung_up_tty_fops now.
		 */
		FUNC7(&port->delta_msr_wait);

		/*
		 * Free the IRQ and disable the port.
		 */
		uport->ops->shutdown(uport);

		/*
		 * Ensure that the IRQ handler isn't running on another CPU.
		 */
		FUNC3(uport->irq);
	}

	/*
	 * kill off our tasklet
	 */
	FUNC4(&state->tlet);

	/*
	 * Free the transmit buffer page.
	 */
	if (state->xmit.buf) {
		FUNC0((unsigned long)state->xmit.buf);
		state->xmit.buf = NULL;
	}
}