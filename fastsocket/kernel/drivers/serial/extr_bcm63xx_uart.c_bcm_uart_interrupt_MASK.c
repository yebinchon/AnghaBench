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
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 unsigned int UART_EXTINP_CTS_MASK ; 
 unsigned int UART_EXTINP_DCD_MASK ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UART_EXTINP_IR_CTS ; 
 int /*<<< orphan*/  UART_EXTINP_IR_DCD ; 
 int /*<<< orphan*/  UART_EXTINP_REG ; 
 int /*<<< orphan*/  UART_IR_EXTIP ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UART_IR_REG ; 
 unsigned int UART_RX_INT_STAT ; 
 unsigned int UART_TX_INT_STAT ; 
 int /*<<< orphan*/  FUNC2 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_port*) ; 
 unsigned int FUNC4 (struct uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct uart_port*,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (struct uart_port*,unsigned int) ; 

__attribute__((used)) static irqreturn_t FUNC9(int irq, void *dev_id)
{
	struct uart_port *port;
	unsigned int irqstat;

	port = dev_id;
	FUNC5(&port->lock);

	irqstat = FUNC4(port, UART_IR_REG);
	if (irqstat & UART_RX_INT_STAT)
		FUNC2(port);

	if (irqstat & UART_TX_INT_STAT)
		FUNC3(port);

	if (irqstat & FUNC1(UART_IR_EXTIP)) {
		unsigned int estat;

		estat = FUNC4(port, UART_EXTINP_REG);
		if (estat & FUNC0(UART_EXTINP_IR_CTS))
			FUNC7(port,
					       estat & UART_EXTINP_CTS_MASK);
		if (estat & FUNC0(UART_EXTINP_IR_DCD))
			FUNC8(port,
					       estat & UART_EXTINP_DCD_MASK);
	}

	FUNC6(&port->lock);
	return IRQ_HANDLED;
}