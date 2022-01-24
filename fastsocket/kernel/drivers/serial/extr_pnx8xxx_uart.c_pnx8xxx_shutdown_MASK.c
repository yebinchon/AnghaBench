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
struct TYPE_2__ {int /*<<< orphan*/  irq; } ;
struct pnx8xxx_port {TYPE_1__ port; int /*<<< orphan*/  timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  PNX8XXX_ICLR ; 
 int /*<<< orphan*/  PNX8XXX_IEN ; 
 int /*<<< orphan*/  PNX8XXX_LCR ; 
 int PNX8XXX_UART_INT_ALLRX ; 
 int PNX8XXX_UART_INT_ALLTX ; 
 int PNX8XXX_UART_LCR_RX_RST ; 
 int PNX8XXX_UART_LCR_TXBREAK ; 
 int PNX8XXX_UART_LCR_TX_RST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct pnx8xxx_port*) ; 
 int FUNC2 (struct pnx8xxx_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pnx8xxx_port*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct uart_port *port)
{
	struct pnx8xxx_port *sport = (struct pnx8xxx_port *)port;
	int lcr;

	/*
	 * Stop our timer.
	 */
	FUNC0(&sport->timer);

	/*
	 * Disable all interrupts
	 */
	FUNC3(sport, PNX8XXX_IEN, 0);

	/*
	 * Reset the Tx and Rx FIFOS, disable the break condition
	 */
	lcr = FUNC2(sport, PNX8XXX_LCR);
	lcr &= ~PNX8XXX_UART_LCR_TXBREAK;
	lcr |= PNX8XXX_UART_LCR_TX_RST | PNX8XXX_UART_LCR_RX_RST;
	FUNC3(sport, PNX8XXX_LCR, lcr);

	/*
	 * Clear all interrupts
	 */
	FUNC3(sport, PNX8XXX_ICLR, PNX8XXX_UART_INT_ALLRX |
			     PNX8XXX_UART_INT_ALLTX);

	/*
	 * Free the interrupt
	 */
	FUNC1(sport->port.irq, sport);
}