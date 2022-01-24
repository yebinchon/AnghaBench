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
struct uart_port {int dummy; } ;
struct TYPE_3__ {int flags; int iobase; int /*<<< orphan*/  irq; int /*<<< orphan*/  lock; int /*<<< orphan*/  mctrl; } ;
struct TYPE_4__ {int /*<<< orphan*/  function; } ;
struct uart_8250_port {TYPE_1__ port; TYPE_2__ timer; scalar_t__ ier; } ;

/* Variables and functions */
 int /*<<< orphan*/  TIOCM_OUT1 ; 
 int /*<<< orphan*/  TIOCM_OUT2 ; 
 int /*<<< orphan*/  UART_IER ; 
 int /*<<< orphan*/  UART_LCR ; 
 int UART_LCR_SBC ; 
 int /*<<< orphan*/  UART_RX ; 
 int UPF_FOURPORT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_8250_port*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct uart_8250_port*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  serial8250_timeout ; 
 int /*<<< orphan*/  FUNC6 (struct uart_8250_port*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct uart_8250_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct uart_8250_port*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct uart_8250_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct uart_8250_port*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC13(struct uart_port *port)
{
	struct uart_8250_port *up = (struct uart_8250_port *)port;
	unsigned long flags;

	/*
	 * Disable interrupts from this port
	 */
	up->ier = 0;
	FUNC9(up, UART_IER, 0);

	FUNC11(&up->port.lock, flags);
	if (up->port.flags & UPF_FOURPORT) {
		/* reset interrupts on the AST Fourport board */
		FUNC2((up->port.iobase & 0xfe0) | 0x1f);
		up->port.mctrl |= TIOCM_OUT1;
	} else
		up->port.mctrl &= ~TIOCM_OUT2;

	FUNC5(&up->port, up->port.mctrl);
	FUNC12(&up->port.lock, flags);

	/*
	 * Disable break condition and FIFOs
	 */
	FUNC8(up, UART_LCR, FUNC7(up, UART_LCR) & ~UART_LCR_SBC);
	FUNC4(up);

#ifdef CONFIG_SERIAL_8250_RSA
	/*
	 * Reset the RSA board back to 115kbps compat mode.
	 */
	disable_rsa(up);
#endif

	/*
	 * Read data port to reset things, and then unlink from
	 * the IRQ chain.
	 */
	(void) FUNC6(up, UART_RX);

	FUNC0(&up->timer);
	up->timer.function = serial8250_timeout;
	if (FUNC3(up->port.irq))
		FUNC10(up);
}