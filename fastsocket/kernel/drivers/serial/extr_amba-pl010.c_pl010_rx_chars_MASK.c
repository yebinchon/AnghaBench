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
 scalar_t__ UART01x_DR ; 
 scalar_t__ UART01x_ECR ; 
 scalar_t__ UART01x_FR ; 
 scalar_t__ UART01x_RSR ; 
 unsigned int UART01x_RSR_ANY ; 
 unsigned int UART01x_RSR_BE ; 
 unsigned int UART01x_RSR_FE ; 
 unsigned int UART01x_RSR_OE ; 
 unsigned int UART01x_RSR_PE ; 
 unsigned int UART_DUMMY_RSR_RX ; 
 scalar_t__ FUNC0 (unsigned int) ; 
 unsigned int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct tty_struct*) ; 
 scalar_t__ FUNC5 (TYPE_4__*) ; 
 scalar_t__ FUNC6 (TYPE_4__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,unsigned int,unsigned int,unsigned int,unsigned int) ; 
 scalar_t__ FUNC8 (unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC10(struct uart_amba_port *uap)
{
	struct tty_struct *tty = uap->port.state->port.tty;
	unsigned int status, ch, flag, rsr, max_count = 256;

	status = FUNC1(uap->port.membase + UART01x_FR);
	while (FUNC0(status) && max_count--) {
		ch = FUNC1(uap->port.membase + UART01x_DR);
		flag = TTY_NORMAL;

		uap->port.icount.rx++;

		/*
		 * Note that the error handling code is
		 * out of the main execution path
		 */
		rsr = FUNC1(uap->port.membase + UART01x_RSR) | UART_DUMMY_RSR_RX;
		if (FUNC8(rsr & UART01x_RSR_ANY)) {
			FUNC9(0, uap->port.membase + UART01x_ECR);

			if (rsr & UART01x_RSR_BE) {
				rsr &= ~(UART01x_RSR_FE | UART01x_RSR_PE);
				uap->port.icount.brk++;
				if (FUNC5(&uap->port))
					goto ignore_char;
			} else if (rsr & UART01x_RSR_PE)
				uap->port.icount.parity++;
			else if (rsr & UART01x_RSR_FE)
				uap->port.icount.frame++;
			if (rsr & UART01x_RSR_OE)
				uap->port.icount.overrun++;

			rsr &= uap->port.read_status_mask;

			if (rsr & UART01x_RSR_BE)
				flag = TTY_BREAK;
			else if (rsr & UART01x_RSR_PE)
				flag = TTY_PARITY;
			else if (rsr & UART01x_RSR_FE)
				flag = TTY_FRAME;
		}

		if (FUNC6(&uap->port, ch))
			goto ignore_char;

		FUNC7(&uap->port, rsr, UART01x_RSR_OE, ch, flag);

	ignore_char:
		status = FUNC1(uap->port.membase + UART01x_FR);
	}
	FUNC3(&uap->port.lock);
	FUNC4(tty);
	FUNC2(&uap->port.lock);
}