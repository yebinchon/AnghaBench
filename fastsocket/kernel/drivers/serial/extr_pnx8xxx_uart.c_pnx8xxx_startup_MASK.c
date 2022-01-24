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
struct TYPE_2__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  irq; } ;
struct pnx8xxx_port {TYPE_1__ port; } ;

/* Variables and functions */
 int /*<<< orphan*/  PNX8XXX_ICLR ; 
 int /*<<< orphan*/  PNX8XXX_IEN ; 
 int PNX8XXX_UART_INT_ALLRX ; 
 int PNX8XXX_UART_INT_ALLTX ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  pnx8xxx_int ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct pnx8xxx_port*) ; 
 int FUNC2 (struct pnx8xxx_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pnx8xxx_port*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct uart_port *port)
{
	struct pnx8xxx_port *sport = (struct pnx8xxx_port *)port;
	int retval;

	/*
	 * Allocate the IRQ
	 */
	retval = FUNC1(sport->port.irq, pnx8xxx_int, 0,
			     "pnx8xxx-uart", sport);
	if (retval)
		return retval;

	/*
	 * Finally, clear and enable interrupts
	 */

	FUNC3(sport, PNX8XXX_ICLR, PNX8XXX_UART_INT_ALLRX |
			     PNX8XXX_UART_INT_ALLTX);

	FUNC3(sport, PNX8XXX_IEN, FUNC2(sport, PNX8XXX_IEN) |
			    PNX8XXX_UART_INT_ALLRX |
			    PNX8XXX_UART_INT_ALLTX);

	/*
	 * Enable modem status interrupts
	 */
	FUNC4(&sport->port.lock);
	FUNC0(&sport->port);
	FUNC5(&sport->port.lock);

	return 0;
}