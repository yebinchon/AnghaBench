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
struct TYPE_6__ {int /*<<< orphan*/  overrun; int /*<<< orphan*/  frame; int /*<<< orphan*/  parity; int /*<<< orphan*/  brk; int /*<<< orphan*/  rx; } ;
struct uart_port {unsigned int read_status_mask; TYPE_3__ icount; TYPE_2__* state; } ;
struct tty_struct {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_4__ {struct tty_struct* tty; } ;
struct TYPE_5__ {TYPE_1__ port; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 unsigned int TTY_BREAK ; 
 unsigned int TTY_FRAME ; 
 unsigned int TTY_NORMAL ; 
 unsigned int TTY_PARITY ; 
 unsigned int UART_DUMMY_LSR_RX ; 
 unsigned int FUNC0 (struct uart_port*) ; 
 unsigned int FUNC1 (struct uart_port*) ; 
 unsigned int URLS_URBI ; 
 unsigned int URLS_URDR ; 
 unsigned int URLS_URFE ; 
 unsigned int URLS_URPE ; 
 unsigned int URLS_URROE ; 
 int /*<<< orphan*/  FUNC2 (struct tty_struct*) ; 
 scalar_t__ FUNC3 (struct uart_port*) ; 
 scalar_t__ FUNC4 (struct uart_port*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct uart_port*,unsigned int,unsigned int,unsigned int,unsigned int) ; 
 scalar_t__ FUNC6 (unsigned int) ; 

__attribute__((used)) static irqreturn_t FUNC7(int irq, void *dev_id)
{
	struct uart_port *port = dev_id;
	struct tty_struct *tty = port->state->port.tty;
	unsigned int status, ch, lsr, flg, max_count = 256;

	status = FUNC1(port);		/* clears pending LSR interrupts */
	while ((status & URLS_URDR) && max_count--) {
		ch = FUNC0(port);
		flg = TTY_NORMAL;

		port->icount.rx++;

		/*
		 * Note that the error handling code is
		 * out of the main execution path
		 */
		lsr = FUNC1(port) | UART_DUMMY_LSR_RX;
		if (FUNC6(lsr & (URLS_URBI | URLS_URPE | URLS_URFE | URLS_URROE))) {
			if (lsr & URLS_URBI) {
				lsr &= ~(URLS_URFE | URLS_URPE);
				port->icount.brk++;
				if (FUNC3(port))
					goto ignore_char;
			}
			if (lsr & URLS_URPE)
				port->icount.parity++;
			if (lsr & URLS_URFE)
				port->icount.frame++;
			if (lsr & URLS_URROE)
				port->icount.overrun++;

			lsr &= port->read_status_mask;

			if (lsr & URLS_URBI)
				flg = TTY_BREAK;
			else if (lsr & URLS_URPE)
				flg = TTY_PARITY;
			else if (lsr & URLS_URFE)
				flg = TTY_FRAME;
		}

		if (FUNC4(port, ch))
			goto ignore_char;

		FUNC5(port, lsr, URLS_URROE, ch, flg);

ignore_char:
		status = FUNC1(port);
	}
	FUNC2(tty);

	return IRQ_HANDLED;
}