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
struct TYPE_2__ {int flags; int iobase; int /*<<< orphan*/  irq; int /*<<< orphan*/  lock; int /*<<< orphan*/  mctrl; } ;
struct uart_sunsu_port {TYPE_1__ port; scalar_t__ ier; } ;
struct uart_port {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TIOCM_OUT1 ; 
 int /*<<< orphan*/  TIOCM_OUT2 ; 
 int /*<<< orphan*/  UART_FCR ; 
 int UART_FCR_CLEAR_RCVR ; 
 int UART_FCR_CLEAR_XMIT ; 
 int UART_FCR_ENABLE_FIFO ; 
 int /*<<< orphan*/  UART_IER ; 
 int /*<<< orphan*/  UART_LCR ; 
 int UART_LCR_SBC ; 
 int /*<<< orphan*/  UART_RX ; 
 int UPF_FOURPORT ; 
 int /*<<< orphan*/  FUNC0 (struct uart_sunsu_port*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct uart_sunsu_port*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_sunsu_port*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct uart_sunsu_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct uart_sunsu_port*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct uart_sunsu_port*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(struct uart_port *port)
{
	struct uart_sunsu_port *up = (struct uart_sunsu_port *) port;
	unsigned long flags;

	/*
	 * Disable interrupts from this port
	 */
	up->ier = 0;
	FUNC6(up, UART_IER, 0);

	FUNC7(&up->port.lock, flags);
	if (up->port.flags & UPF_FOURPORT) {
		/* reset interrupts on the AST Fourport board */
		FUNC2((up->port.iobase & 0xfe0) | 0x1f);
		up->port.mctrl |= TIOCM_OUT1;
	} else
		up->port.mctrl &= ~TIOCM_OUT2;

	FUNC9(&up->port, up->port.mctrl);
	FUNC8(&up->port.lock, flags);

	/*
	 * Disable break condition and FIFOs
	 */
	FUNC5(up, UART_LCR, FUNC4(up, UART_LCR) & ~UART_LCR_SBC);
	FUNC6(up, UART_FCR, UART_FCR_ENABLE_FIFO |
				  UART_FCR_CLEAR_RCVR |
				  UART_FCR_CLEAR_XMIT);
	FUNC6(up, UART_FCR, 0);

#ifdef CONFIG_SERIAL_8250_RSA
	/*
	 * Reset the RSA board back to 115kbps compat mode.
	 */
	disable_rsa(up);
#endif

	/*
	 * Read data port to reset things.
	 */
	(void) FUNC3(up, UART_RX);

	FUNC1(up->port.irq, up);
}