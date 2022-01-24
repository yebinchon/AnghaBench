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
struct TYPE_4__ {unsigned long data; } ;
struct TYPE_3__ {unsigned int timeout; int /*<<< orphan*/  irq; } ;
struct uart_sio_port {int ier; TYPE_2__ timer; TYPE_1__ port; } ;
struct uart_port {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SIOTRCR ; 
 int UART_IER_MSI ; 
 int UART_IER_RDI ; 
 int UART_IER_RLSI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,scalar_t__) ; 
 int FUNC2 (struct uart_sio_port*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct uart_sio_port*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static int FUNC6(struct uart_port *port)
{
	struct uart_sio_port *up = (struct uart_sio_port *)port;
	int retval;

	FUNC3();

	/*
	 * If the "interrupt" for this port doesn't correspond with any
	 * hardware interrupt, we use a timer-based system.  The original
	 * driver used to do this with IRQ0.
	 */
	if (!FUNC0(up->port.irq)) {
		unsigned int timeout = up->port.timeout;

		timeout = timeout > 6 ? (timeout / 2 - 2) : 1;

		up->timer.data = (unsigned long)up;
		FUNC1(&up->timer, jiffies + timeout);
	} else {
		retval = FUNC2(up);
		if (retval)
			return retval;
	}

	/*
	 * Finally, enable interrupts.  Note: Modem status interrupts
	 * are set via set_termios(), which will be occurring imminently
	 * anyway, so we don't enable them here.
	 * - M32R_SIO: 0x0c
	 * - M32R_PLDSIO: 0x04
	 */
	up->ier = UART_IER_MSI | UART_IER_RLSI | UART_IER_RDI;
	FUNC4(up, SIOTRCR, up->ier);

	/*
	 * And clear the interrupt registers again for luck.
	 */
	FUNC5();

	return 0;
}