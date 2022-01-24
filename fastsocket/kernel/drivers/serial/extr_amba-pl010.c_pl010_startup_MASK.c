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
struct TYPE_2__ {scalar_t__ membase; int /*<<< orphan*/  irq; int /*<<< orphan*/  uartclk; } ;
struct uart_amba_port {int old_status; int /*<<< orphan*/  clk; TYPE_1__ port; } ;

/* Variables and functions */
 scalar_t__ UART010_CR ; 
 int UART010_CR_RIE ; 
 int UART010_CR_RTIE ; 
 int UART01x_CR_UARTEN ; 
 scalar_t__ UART01x_FR ; 
 int UART01x_FR_MODEM_ANY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pl010_int ; 
 int FUNC3 (scalar_t__) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct uart_amba_port*) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct uart_port *port)
{
	struct uart_amba_port *uap = (struct uart_amba_port *)port;
	int retval;

	/*
	 * Try to enable the clock producer.
	 */
	retval = FUNC1(uap->clk);
	if (retval)
		goto out;

	uap->port.uartclk = FUNC2(uap->clk);

	/*
	 * Allocate the IRQ
	 */
	retval = FUNC4(uap->port.irq, pl010_int, 0, "uart-pl010", uap);
	if (retval)
		goto clk_dis;

	/*
	 * initialise the old status of the modem signals
	 */
	uap->old_status = FUNC3(uap->port.membase + UART01x_FR) & UART01x_FR_MODEM_ANY;

	/*
	 * Finally, enable interrupts
	 */
	FUNC5(UART01x_CR_UARTEN | UART010_CR_RIE | UART010_CR_RTIE,
	       uap->port.membase + UART010_CR);

	return 0;

 clk_dis:
	FUNC0(uap->clk);
 out:
	return retval;
}