#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  overrun; int /*<<< orphan*/  frame; int /*<<< orphan*/  parity; int /*<<< orphan*/  brk; int /*<<< orphan*/  rx; } ;
struct TYPE_10__ {unsigned int read_status_mask; int /*<<< orphan*/  lock; scalar_t__ membase; TYPE_3__ icount; TYPE_2__* state; } ;
struct uart_amba_port {TYPE_4__ port; } ;
struct tty_struct {int dummy; } ;
struct TYPE_7__ {struct tty_struct* tty; } ;
struct TYPE_8__ {TYPE_1__ port; } ;

/* Variables and functions */
 unsigned int TTY_BREAK ; 
 unsigned int TTY_FRAME ; 
 unsigned int TTY_NORMAL ; 
 unsigned int TTY_PARITY ; 
 unsigned int UART011_DR_BE ; 
 unsigned int UART011_DR_FE ; 
 unsigned int UART011_DR_OE ; 
 unsigned int UART011_DR_PE ; 
 scalar_t__ UART01x_DR ; 
 scalar_t__ UART01x_FR ; 
 unsigned int UART01x_FR_RXFE ; 
 unsigned int UART_DR_ERROR ; 
 unsigned int UART_DUMMY_DR_RX ; 
 unsigned int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct tty_struct*) ; 
 scalar_t__ FUNC4 (TYPE_4__*) ; 
 scalar_t__ FUNC5 (TYPE_4__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,unsigned int,unsigned int,unsigned int,unsigned int) ; 
 scalar_t__ FUNC7 (unsigned int) ; 

__attribute__((used)) static void FUNC8(struct uart_amba_port *uap)
{
	struct tty_struct *tty = uap->port.state->port.tty;
	unsigned int status, ch, flag, max_count = 256;

	status = FUNC0(uap->port.membase + UART01x_FR);
	while ((status & UART01x_FR_RXFE) == 0 && max_count--) {
		ch = FUNC0(uap->port.membase + UART01x_DR) | UART_DUMMY_DR_RX;
		flag = TTY_NORMAL;
		uap->port.icount.rx++;

		/*
		 * Note that the error handling code is
		 * out of the main execution path
		 */
		if (FUNC7(ch & UART_DR_ERROR)) {
			if (ch & UART011_DR_BE) {
				ch &= ~(UART011_DR_FE | UART011_DR_PE);
				uap->port.icount.brk++;
				if (FUNC4(&uap->port))
					goto ignore_char;
			} else if (ch & UART011_DR_PE)
				uap->port.icount.parity++;
			else if (ch & UART011_DR_FE)
				uap->port.icount.frame++;
			if (ch & UART011_DR_OE)
				uap->port.icount.overrun++;

			ch &= uap->port.read_status_mask;

			if (ch & UART011_DR_BE)
				flag = TTY_BREAK;
			else if (ch & UART011_DR_PE)
				flag = TTY_PARITY;
			else if (ch & UART011_DR_FE)
				flag = TTY_FRAME;
		}

		if (FUNC5(&uap->port, ch & 255))
			goto ignore_char;

		FUNC6(&uap->port, ch, UART011_DR_OE, ch, flag);

	ignore_char:
		status = FUNC0(uap->port.membase + UART01x_FR);
	}
	FUNC2(&uap->port.lock);
	FUNC3(tty);
	FUNC1(&uap->port.lock);
}