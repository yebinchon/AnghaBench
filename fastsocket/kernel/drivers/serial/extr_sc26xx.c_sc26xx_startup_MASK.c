#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct uart_port {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CR ; 
 int CR_ENA_RX ; 
 int CR_ENA_TX ; 
 int CR_RES_RX ; 
 int CR_RES_TX ; 
 int IMR_RXRDY ; 
 int IMR_TXRDY ; 
 int /*<<< orphan*/  OPCR ; 
 int /*<<< orphan*/  FUNC0 (struct uart_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_port*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_port*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_port*,int) ; 

__attribute__((used)) static int FUNC4(struct uart_port *port)
{
	FUNC2(port, IMR_TXRDY | IMR_RXRDY);
	FUNC0(port, OPCR, 0);

	/* reset tx and rx */
	FUNC1(port, CR, CR_RES_RX);
	FUNC1(port, CR, CR_RES_TX);

	/* start rx/tx */
	FUNC1(port, CR, CR_ENA_TX | CR_ENA_RX);

	/* enable irqs */
	FUNC3(port, IMR_RXRDY);
	return 0;
}