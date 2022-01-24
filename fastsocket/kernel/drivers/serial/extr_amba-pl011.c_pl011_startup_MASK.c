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
struct uart_port {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; scalar_t__ membase; int /*<<< orphan*/  irq; int /*<<< orphan*/  uartclk; } ;
struct uart_amba_port {unsigned int ifls; int old_status; int im; int /*<<< orphan*/  clk; TYPE_1__ port; } ;

/* Variables and functions */
 scalar_t__ UART011_CR ; 
 unsigned int UART011_CR_LBE ; 
 unsigned int UART011_CR_RXE ; 
 unsigned int UART011_CR_TXE ; 
 scalar_t__ UART011_FBRD ; 
 scalar_t__ UART011_IBRD ; 
 scalar_t__ UART011_IFLS ; 
 scalar_t__ UART011_IMSC ; 
 scalar_t__ UART011_LCRH ; 
 int UART011_RTIM ; 
 int UART011_RXIM ; 
 unsigned int UART01x_CR_UARTEN ; 
 scalar_t__ UART01x_DR ; 
 scalar_t__ UART01x_FR ; 
 int UART01x_FR_BUSY ; 
 int UART01x_FR_MODEM_ANY ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pl011_int ; 
 int FUNC4 (scalar_t__) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct uart_amba_port*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (unsigned int,scalar_t__) ; 

__attribute__((used)) static int FUNC9(struct uart_port *port)
{
	struct uart_amba_port *uap = (struct uart_amba_port *)port;
	unsigned int cr;
	int retval;

	/*
	 * Try to enable the clock producer.
	 */
	retval = FUNC2(uap->clk);
	if (retval)
		goto out;

	uap->port.uartclk = FUNC3(uap->clk);

	/*
	 * Allocate the IRQ
	 */
	retval = FUNC5(uap->port.irq, pl011_int, 0, "uart-pl011", uap);
	if (retval)
		goto clk_dis;

	FUNC8(uap->ifls, uap->port.membase + UART011_IFLS);

	/*
	 * Provoke TX FIFO interrupt into asserting.
	 */
	cr = UART01x_CR_UARTEN | UART011_CR_TXE | UART011_CR_LBE;
	FUNC8(cr, uap->port.membase + UART011_CR);
	FUNC8(0, uap->port.membase + UART011_FBRD);
	FUNC8(1, uap->port.membase + UART011_IBRD);
	FUNC8(0, uap->port.membase + UART011_LCRH);
	FUNC8(0, uap->port.membase + UART01x_DR);
	while (FUNC4(uap->port.membase + UART01x_FR) & UART01x_FR_BUSY)
		FUNC0();

	cr = UART01x_CR_UARTEN | UART011_CR_RXE | UART011_CR_TXE;
	FUNC8(cr, uap->port.membase + UART011_CR);

	/*
	 * initialise the old status of the modem signals
	 */
	uap->old_status = FUNC4(uap->port.membase + UART01x_FR) & UART01x_FR_MODEM_ANY;

	/*
	 * Finally, enable interrupts
	 */
	FUNC6(&uap->port.lock);
	uap->im = UART011_RXIM | UART011_RTIM;
	FUNC8(uap->im, uap->port.membase + UART011_IMSC);
	FUNC7(&uap->port.lock);

	return 0;

 clk_dis:
	FUNC1(uap->clk);
 out:
	return retval;
}