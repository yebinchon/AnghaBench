#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  mctrl; int /*<<< orphan*/  irq; int /*<<< orphan*/  uartclk; } ;
struct uart_pxa_port {int ier; TYPE_1__ port; int /*<<< orphan*/  name; int /*<<< orphan*/  clk; int /*<<< orphan*/  mcr; } ;
struct uart_port {int line; } ;

/* Variables and functions */
 int /*<<< orphan*/  TIOCM_OUT2 ; 
 int /*<<< orphan*/  UART_FCR ; 
 int UART_FCR_CLEAR_RCVR ; 
 int UART_FCR_CLEAR_XMIT ; 
 int UART_FCR_ENABLE_FIFO ; 
 int /*<<< orphan*/  UART_IER ; 
 int UART_IER_RDI ; 
 int UART_IER_RLSI ; 
 int UART_IER_RTOIE ; 
 int UART_IER_UUE ; 
 int /*<<< orphan*/  UART_IIR ; 
 int /*<<< orphan*/  UART_LCR ; 
 int UART_LCR_WLEN8 ; 
 int /*<<< orphan*/  UART_LSR ; 
 int /*<<< orphan*/  UART_MCR_AFE ; 
 int /*<<< orphan*/  UART_MSR ; 
 int /*<<< orphan*/  UART_RX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct uart_pxa_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_pxa_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_pxa_port*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  serial_pxa_irq ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC7(struct uart_port *port)
{
	struct uart_pxa_port *up = (struct uart_pxa_port *)port;
	unsigned long flags;
	int retval;

	if (port->line == 3) /* HWUART */
		up->mcr |= UART_MCR_AFE;
	else
		up->mcr = 0;

	up->port.uartclk = FUNC0(up->clk);

	/*
	 * Allocate the IRQ
	 */
	retval = FUNC1(up->port.irq, serial_pxa_irq, 0, up->name, up);
	if (retval)
		return retval;

	/*
	 * Clear the FIFO buffers and disable them.
	 * (they will be reenabled in set_termios())
	 */
	FUNC3(up, UART_FCR, UART_FCR_ENABLE_FIFO);
	FUNC3(up, UART_FCR, UART_FCR_ENABLE_FIFO |
			UART_FCR_CLEAR_RCVR | UART_FCR_CLEAR_XMIT);
	FUNC3(up, UART_FCR, 0);

	/*
	 * Clear the interrupt registers.
	 */
	(void) FUNC2(up, UART_LSR);
	(void) FUNC2(up, UART_RX);
	(void) FUNC2(up, UART_IIR);
	(void) FUNC2(up, UART_MSR);

	/*
	 * Now, initialize the UART
	 */
	FUNC3(up, UART_LCR, UART_LCR_WLEN8);

	FUNC5(&up->port.lock, flags);
	up->port.mctrl |= TIOCM_OUT2;
	FUNC4(&up->port, up->port.mctrl);
	FUNC6(&up->port.lock, flags);

	/*
	 * Finally, enable interrupts.  Note: Modem status interrupts
	 * are set via set_termios(), which will be occurring imminently
	 * anyway, so we don't enable them here.
	 */
	up->ier = UART_IER_RLSI | UART_IER_RDI | UART_IER_RTOIE | UART_IER_UUE;
	FUNC3(up, UART_IER, up->ier);

	/*
	 * And clear the interrupt registers again for luck.
	 */
	(void) FUNC2(up, UART_LSR);
	(void) FUNC2(up, UART_RX);
	(void) FUNC2(up, UART_IIR);
	(void) FUNC2(up, UART_MSR);

	return 0;
}