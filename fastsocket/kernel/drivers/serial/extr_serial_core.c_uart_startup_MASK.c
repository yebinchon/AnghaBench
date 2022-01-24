#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {unsigned char* buf; } ;
struct tty_port {int flags; TYPE_3__* tty; } ;
struct uart_state {TYPE_4__ xmit; struct tty_port port; struct uart_port* uart_port; } ;
struct uart_port {scalar_t__ type; int /*<<< orphan*/  lock; TYPE_2__* ops; } ;
struct TYPE_7__ {int flags; int hw_stopped; TYPE_1__* termios; } ;
struct TYPE_6__ {int (* startup ) (struct uart_port*) ;int (* get_mctrl ) (struct uart_port*) ;} ;
struct TYPE_5__ {int c_cflag; } ;

/* Variables and functions */
 int /*<<< orphan*/  ASYNCB_INITIALIZED ; 
 int ASYNC_CTS_FLOW ; 
 int ASYNC_DSR_FLOW ; 
 int ASYNC_INITIALIZED ; 
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 int CBAUD ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ PORT_UNKNOWN ; 
 int TIOCM_CTS ; 
 int TIOCM_DSR ; 
 int TIOCM_DTR ; 
 int TIOCM_RTS ; 
 int /*<<< orphan*/  TTY_IO_ERROR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int*) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct uart_port*) ; 
 int FUNC7 (struct uart_port*) ; 
 int FUNC8 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC9 (struct uart_state*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC11 (struct uart_port*,int) ; 

__attribute__((used)) static int FUNC12(struct uart_state *state, int init_hw)
{
	struct uart_port *uport = state->uart_port;
	struct tty_port *port = &state->port;
	unsigned long page;
	int retval = 0;

	if (port->flags & ASYNC_INITIALIZED)
		return 0;

	/*
	 * Set the TTY IO error marker - we will only clear this
	 * once we have successfully opened the port.  Also set
	 * up the tty->alt_speed kludge
	 */
	FUNC3(TTY_IO_ERROR, &port->tty->flags);

	if (uport->type == PORT_UNKNOWN)
		return 0;

	/*
	 * Initialise and allocate the transmit and temporary
	 * buffer.
	 */
	if (!state->xmit.buf) {
		/* This is protected by the per port mutex */
		page = FUNC2(GFP_KERNEL);
		if (!page)
			return -ENOMEM;

		state->xmit.buf = (unsigned char *) page;
		FUNC10(&state->xmit);
	}

	retval = uport->ops->startup(uport);
	if (retval == 0) {
		if (init_hw) {
			/*
			 * Initialise the hardware port settings.
			 */
			FUNC9(state, NULL);

			/*
			 * Setup the RTS and DTR signals once the
			 * port is open and ready to respond.
			 */
			if (port->tty->termios->c_cflag & CBAUD)
				FUNC11(uport, TIOCM_RTS | TIOCM_DTR);
		}

		if (port->flags & ASYNC_CTS_FLOW) {
			FUNC4(&uport->lock);
			if (!(uport->ops->get_mctrl(uport) & TIOCM_CTS))
				port->tty->hw_stopped = 1;
			FUNC5(&uport->lock);
		}

		if (port->flags & ASYNC_DSR_FLOW) {
			FUNC4(&uport->lock);
			if (!(uport->ops->get_mctrl(uport) & TIOCM_DSR))
				port->tty->hw_stopped = 1;
			FUNC5(&uport->lock);
		}

		FUNC3(ASYNCB_INITIALIZED, &port->flags);

		FUNC1(TTY_IO_ERROR, &port->tty->flags);
	}

	if (retval && FUNC0(CAP_SYS_ADMIN))
		retval = 0;

	return retval;
}