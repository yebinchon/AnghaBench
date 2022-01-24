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
struct uart_port {int /*<<< orphan*/  lock; } ;
struct msm_port {int /*<<< orphan*/  imr; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  UART_IMR ; 
 unsigned int UART_IMR_DELTA_CTS ; 
 unsigned int UART_IMR_RXLEV ; 
 unsigned int UART_IMR_RXSTALE ; 
 unsigned int UART_IMR_TXLEV ; 
 int /*<<< orphan*/  UART_MISR ; 
 struct msm_port* FUNC0 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_port*) ; 
 unsigned int FUNC4 (struct uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct uart_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC8(int irq, void *dev_id)
{
	struct uart_port *port = dev_id;
	struct msm_port *msm_port = FUNC0(port);
	unsigned int misr;

	FUNC6(&port->lock);
	misr = FUNC4(port, UART_MISR);
	FUNC5(port, 0, UART_IMR); /* disable interrupt */

	if (misr & (UART_IMR_RXLEV | UART_IMR_RXSTALE))
		FUNC2(port);
	if (misr & UART_IMR_TXLEV)
		FUNC3(port);
	if (misr & UART_IMR_DELTA_CTS)
		FUNC1(port);

	FUNC5(port, msm_port->imr, UART_IMR); /* restore interrupt */
	FUNC7(&port->lock);

	return IRQ_HANDLED;
}