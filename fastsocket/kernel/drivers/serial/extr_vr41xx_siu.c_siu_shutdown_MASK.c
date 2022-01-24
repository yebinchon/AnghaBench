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
typedef  int /*<<< orphan*/  uint8_t ;
struct uart_port {scalar_t__ type; int /*<<< orphan*/  irq; int /*<<< orphan*/  lock; int /*<<< orphan*/  mctrl; } ;

/* Variables and functions */
 int /*<<< orphan*/  DSIUINT_ALL ; 
 scalar_t__ PORT_VR41XX_DSIU ; 
 int /*<<< orphan*/  TIOCM_OUT2 ; 
 int /*<<< orphan*/  UART_IER ; 
 int /*<<< orphan*/  UART_LCR ; 
 int /*<<< orphan*/  UART_LCR_SBC ; 
 int /*<<< orphan*/  UART_RX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct uart_port*) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct uart_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct uart_port *port)
{
	unsigned long flags;
	uint8_t lcr;

	FUNC4(port, UART_IER, 0);

	FUNC5(&port->lock, flags);

	port->mctrl &= ~TIOCM_OUT2;
	FUNC3(port, port->mctrl);

	FUNC6(&port->lock, flags);

	lcr = FUNC2(port, UART_LCR);
	lcr &= ~UART_LCR_SBC;
	FUNC4(port, UART_LCR, lcr);

	FUNC1(port);

	(void)FUNC2(port, UART_RX);

	if (port->type == PORT_VR41XX_DSIU)
		FUNC7(DSIUINT_ALL);

	FUNC0(port->irq, port);
}