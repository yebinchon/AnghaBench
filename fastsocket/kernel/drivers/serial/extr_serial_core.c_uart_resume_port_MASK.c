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
struct tty_port {int flags; int /*<<< orphan*/  mutex; TYPE_1__* tty; } ;
struct uart_state {struct tty_port port; } ;
struct uart_port {int line; int /*<<< orphan*/  lock; int /*<<< orphan*/  mctrl; struct uart_ops* ops; TYPE_2__* cons; scalar_t__ suspended; int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; } ;
struct uart_ops {int (* startup ) (struct uart_port*) ;int /*<<< orphan*/  (* start_tx ) (struct uart_port*) ;int /*<<< orphan*/  (* set_mctrl ) (struct uart_port*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* set_termios ) (struct uart_port*,struct ktermios*,int /*<<< orphan*/ *) ;} ;
struct uart_match {struct uart_driver* member_1; struct uart_port* member_0; } ;
struct uart_driver {struct uart_state* state; } ;
struct ktermios {scalar_t__ c_cflag; int /*<<< orphan*/  c_ospeed; int /*<<< orphan*/  c_ispeed; } ;
struct device {int dummy; } ;
struct TYPE_4__ {scalar_t__ cflag; } ;
struct TYPE_3__ {struct ktermios* termios; } ;

/* Variables and functions */
 int /*<<< orphan*/  ASYNCB_INITIALIZED ; 
 int /*<<< orphan*/  ASYNCB_SUSPENDED ; 
 int ASYNC_SUSPENDED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  console_suspend_enabled ; 
 struct device* FUNC2 (int /*<<< orphan*/ ,struct uart_match*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ktermios*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  serial_match_port ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct uart_port*,struct ktermios*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct uart_port*,struct ktermios*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct uart_port*,int /*<<< orphan*/ ) ; 
 int FUNC14 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC15 (struct uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC17 (struct ktermios*) ; 
 int /*<<< orphan*/  FUNC18 (struct ktermios*) ; 
 int /*<<< orphan*/  FUNC19 (struct uart_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct uart_state*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC21 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC22 (struct uart_state*) ; 

int FUNC23(struct uart_driver *drv, struct uart_port *uport)
{
	struct uart_state *state = drv->state + uport->line;
	struct tty_port *port = &state->port;
	struct device *tty_dev;
	struct uart_match match = {uport, drv};
	struct ktermios termios;

	FUNC6(&port->mutex);

	if (!console_suspend_enabled && FUNC21(uport)) {
		/* no need to resume serial console, it wasn't suspended */
		/*
		 * First try to use the console cflag setting.
		 */
		FUNC5(&termios, 0, sizeof(struct ktermios));
		termios.c_cflag = uport->cons->cflag;
		/*
		 * If that's unset, use the tty termios setting.
		 */
		if (termios.c_cflag == 0)
			termios = *state->port.tty->termios;
		else {
			termios.c_ispeed = termios.c_ospeed =
				FUNC18(&termios);
			termios.c_ispeed = termios.c_ospeed =
				FUNC17(&termios);
		}
		uport->ops->set_termios(uport, &termios, NULL);
		FUNC7(&port->mutex);
		return 0;
	}

	tty_dev = FUNC2(uport->dev, &match, serial_match_port);
	if (!uport->suspended && FUNC3(tty_dev)) {
		FUNC4(uport->irq);
		FUNC7(&port->mutex);
		return 0;
	}
	uport->suspended = 0;

	/*
	 * Re-enable the console device after suspending.
	 */
	if (FUNC21(uport)) {
		FUNC19(state, 0);
		uport->ops->set_termios(uport, &termios, NULL);
		FUNC1(uport->cons);
	}

	if (port->flags & ASYNC_SUSPENDED) {
		const struct uart_ops *ops = uport->ops;
		int ret;

		FUNC19(state, 0);
		FUNC9(&uport->lock);
		ops->set_mctrl(uport, 0);
		FUNC10(&uport->lock);
		ret = ops->startup(uport);
		if (ret == 0) {
			FUNC20(state, NULL);
			FUNC9(&uport->lock);
			ops->set_mctrl(uport, uport->mctrl);
			ops->start_tx(uport);
			FUNC10(&uport->lock);
			FUNC8(ASYNCB_INITIALIZED, &port->flags);
		} else {
			/*
			 * Failed to resume - maybe hardware went away?
			 * Clear the "initialized" flag so we won't try
			 * to call the low level drivers shutdown method.
			 */
			FUNC22(state);
		}

		FUNC0(ASYNCB_SUSPENDED, &port->flags);
	}

	FUNC7(&port->mutex);

	return 0;
}