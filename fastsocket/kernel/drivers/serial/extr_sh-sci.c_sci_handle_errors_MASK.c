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
struct uart_port {int /*<<< orphan*/  dev; TYPE_2__* state; } ;
struct tty_struct {int dummy; } ;
struct sci_port {int break_flag; } ;
struct TYPE_3__ {struct tty_struct* tty; } ;
struct TYPE_4__ {TYPE_1__ port; } ;

/* Variables and functions */
 int /*<<< orphan*/  SCxSR ; 
 unsigned short FUNC0 (struct uart_port*) ; 
 unsigned short FUNC1 (struct uart_port*) ; 
 unsigned short FUNC2 (struct uart_port*) ; 
 int /*<<< orphan*/  TTY_BREAK ; 
 int /*<<< orphan*/  TTY_FRAME ; 
 int /*<<< orphan*/  TTY_OVERRUN ; 
 int /*<<< orphan*/  TTY_PARITY ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 unsigned short FUNC5 (struct uart_port*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC7 (struct sci_port*) ; 
 struct sci_port* FUNC8 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC9 (struct tty_struct*) ; 
 scalar_t__ FUNC10 (struct tty_struct*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (struct uart_port*) ; 

__attribute__((used)) static inline int FUNC12(struct uart_port *port)
{
	int copied = 0;
	unsigned short status = FUNC5(port, SCxSR);
	struct tty_struct *tty = port->state->port.tty;

	if (status & FUNC1(port)) {
		/* overrun error */
		if (FUNC10(tty, 0, TTY_OVERRUN))
			copied++;

		FUNC4(port->dev, "overrun error");
	}

	if (status & FUNC0(port)) {
		if (FUNC6(port) == 0) {
			/* Notify of BREAK */
			struct sci_port *sci_port = FUNC8(port);

			if (!sci_port->break_flag) {
				sci_port->break_flag = 1;
				FUNC7(sci_port);

				/* Do sysrq handling. */
				if (FUNC11(port))
					return 0;

				FUNC3(port->dev, "BREAK detected\n");

				if (FUNC10(tty, 0, TTY_BREAK))
					copied++;
			}

		} else {
			/* frame error */
			if (FUNC10(tty, 0, TTY_FRAME))
				copied++;

			FUNC4(port->dev, "frame error\n");
		}
	}

	if (status & FUNC2(port)) {
		/* parity error */
		if (FUNC10(tty, 0, TTY_PARITY))
			copied++;

		FUNC4(port->dev, "parity error");
	}

	if (copied)
		FUNC9(tty);

	return copied;
}