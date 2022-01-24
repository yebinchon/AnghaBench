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
struct TYPE_6__ {scalar_t__ buf; } ;
struct sdio_uart_port {int lcr; TYPE_3__ xmit; int /*<<< orphan*/  func; scalar_t__ ier; TYPE_2__* tty; } ;
struct TYPE_5__ {TYPE_1__* termios; } ;
struct TYPE_4__ {int c_cflag; } ;

/* Variables and functions */
 int HUPCL ; 
 int TIOCM_DTR ; 
 int TIOCM_OUT2 ; 
 int TIOCM_RTS ; 
 int /*<<< orphan*/  UART_FCR ; 
 int UART_FCR_CLEAR_RCVR ; 
 int UART_FCR_CLEAR_XMIT ; 
 int UART_FCR_ENABLE_FIFO ; 
 int /*<<< orphan*/  UART_IER ; 
 int /*<<< orphan*/  UART_LCR ; 
 int UART_LCR_SBC ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sdio_uart_port*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct sdio_uart_port*) ; 
 int /*<<< orphan*/  FUNC5 (struct sdio_uart_port*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sdio_uart_port*) ; 
 int /*<<< orphan*/  FUNC7 (struct sdio_uart_port*) ; 

__attribute__((used)) static void FUNC8(struct sdio_uart_port *port)
{
	int ret;

	ret = FUNC4(port);
	if (ret)
		goto skip;

	FUNC7(port);

	/* TODO: wait here for TX FIFO to drain */

	/* Turn off DTR and RTS early. */
	if (port->tty->termios->c_cflag & HUPCL)
		FUNC5(port, TIOCM_DTR | TIOCM_RTS);

	 /* Disable interrupts from this port */
	FUNC3(port->func);
	port->ier = 0;
	FUNC2(port, UART_IER, 0);

	FUNC5(port, TIOCM_OUT2);

	/* Disable break condition and FIFOs. */
	port->lcr &= ~UART_LCR_SBC;
	FUNC2(port, UART_LCR, port->lcr);
	FUNC2(port, UART_FCR, UART_FCR_ENABLE_FIFO |
				 UART_FCR_CLEAR_RCVR |
				 UART_FCR_CLEAR_XMIT);
	FUNC2(port, UART_FCR, 0);

	FUNC1(port->func);

	FUNC6(port);

skip:
	/* Free the transmit buffer page. */
	FUNC0((unsigned long)port->xmit.buf);
}