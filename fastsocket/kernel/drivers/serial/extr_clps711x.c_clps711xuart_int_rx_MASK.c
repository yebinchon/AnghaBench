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
struct TYPE_6__ {int /*<<< orphan*/  overrun; int /*<<< orphan*/  frame; int /*<<< orphan*/  parity; int /*<<< orphan*/  rx; } ;
struct uart_port {unsigned int read_status_mask; scalar_t__ sysrq; TYPE_3__ icount; TYPE_2__* state; } ;
struct tty_struct {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_4__ {struct tty_struct* tty; } ;
struct TYPE_5__ {TYPE_1__ port; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (struct uart_port*) ; 
 unsigned int SYSFLG_URXFE ; 
 unsigned int TTY_FRAME ; 
 unsigned int TTY_NORMAL ; 
 unsigned int TTY_PARITY ; 
 int /*<<< orphan*/  FUNC1 (struct uart_port*) ; 
 unsigned int UARTDR_FRMERR ; 
 unsigned int UARTDR_OVERR ; 
 unsigned int UARTDR_PARERR ; 
 unsigned int UART_ANY_ERR ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct tty_struct*) ; 
 scalar_t__ FUNC4 (struct uart_port*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct uart_port*,unsigned int,unsigned int,unsigned int,unsigned int) ; 
 scalar_t__ FUNC6 (unsigned int) ; 

__attribute__((used)) static irqreturn_t FUNC7(int irq, void *dev_id)
{
	struct uart_port *port = dev_id;
	struct tty_struct *tty = port->state->port.tty;
	unsigned int status, ch, flg;

	status = FUNC2(FUNC0(port));
	while (!(status & SYSFLG_URXFE)) {
		ch = FUNC2(FUNC1(port));

		port->icount.rx++;

		flg = TTY_NORMAL;

		/*
		 * Note that the error handling code is
		 * out of the main execution path
		 */
		if (FUNC6(ch & UART_ANY_ERR)) {
			if (ch & UARTDR_PARERR)
				port->icount.parity++;
			else if (ch & UARTDR_FRMERR)
				port->icount.frame++;
			if (ch & UARTDR_OVERR)
				port->icount.overrun++;

			ch &= port->read_status_mask;

			if (ch & UARTDR_PARERR)
				flg = TTY_PARITY;
			else if (ch & UARTDR_FRMERR)
				flg = TTY_FRAME;

#ifdef SUPPORT_SYSRQ
			port->sysrq = 0;
#endif
		}

		if (FUNC4(port, ch))
			goto ignore_char;

		/*
		 * CHECK: does overrun affect the current character?
		 * ASSUMPTION: it does not.
		 */
		FUNC5(port, ch, UARTDR_OVERR, ch, flg);

	ignore_char:
		status = FUNC2(FUNC0(port));
	}
	FUNC3(tty);
	return IRQ_HANDLED;
}