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
struct TYPE_6__ {int /*<<< orphan*/  rx; int /*<<< orphan*/  frame; int /*<<< orphan*/  brk; int /*<<< orphan*/  overrun; } ;
struct uart_port {unsigned int read_status_mask; TYPE_3__ icount; TYPE_2__* state; } ;
struct tty_struct {int dummy; } ;
struct TYPE_4__ {struct tty_struct* tty; } ;
struct TYPE_5__ {TYPE_1__ port; } ;

/* Variables and functions */
 char TTY_BREAK ; 
 char TTY_FRAME ; 
 char TTY_NORMAL ; 
 char TTY_OVERRUN ; 
 int /*<<< orphan*/  UART_CR ; 
 int /*<<< orphan*/  UART_CR_CMD_RESET_ERR ; 
 int /*<<< orphan*/  UART_RF ; 
 int /*<<< orphan*/  UART_SR ; 
 int UART_SR_OVERRUN ; 
 unsigned int UART_SR_PAR_FRAME_ERR ; 
 unsigned int UART_SR_RX_BREAK ; 
 unsigned int UART_SR_RX_READY ; 
 int FUNC0 (struct uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC3 (struct tty_struct*,unsigned int,char) ; 
 scalar_t__ FUNC4 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC5 (struct uart_port*,unsigned int) ; 

__attribute__((used)) static void FUNC6(struct uart_port *port)
{
	struct tty_struct *tty = port->state->port.tty;
	unsigned int sr;

	/*
	 * Handle overrun. My understanding of the hardware is that overrun
	 * is not tied to the RX buffer, so we handle the case out of band.
	 */
	if ((FUNC0(port, UART_SR) & UART_SR_OVERRUN)) {
		port->icount.overrun++;
		FUNC3(tty, 0, TTY_OVERRUN);
		FUNC1(port, UART_CR_CMD_RESET_ERR, UART_CR);
	}

	/* and now the main RX loop */
	while ((sr = FUNC0(port, UART_SR)) & UART_SR_RX_READY) {
		unsigned int c;
		char flag = TTY_NORMAL;

		c = FUNC0(port, UART_RF);

		if (sr & UART_SR_RX_BREAK) {
			port->icount.brk++;
			if (FUNC4(port))
				continue;
		} else if (sr & UART_SR_PAR_FRAME_ERR) {
			port->icount.frame++;
		} else {
			port->icount.rx++;
		}

		/* Mask conditions we're ignorning. */
		sr &= port->read_status_mask;

		if (sr & UART_SR_RX_BREAK) {
			flag = TTY_BREAK;
		} else if (sr & UART_SR_PAR_FRAME_ERR) {
			flag = TTY_FRAME;
		}

		if (!FUNC5(port, c))
			FUNC3(tty, c, flag);
	}

	FUNC2(tty);
}