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
struct uart_port {int /*<<< orphan*/  lock; scalar_t__ membase; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int FR_CTS ; 
 int IIR_MASK ; 
 unsigned char IIR_MIS ; 
 unsigned char IIR_RIS ; 
 unsigned char IIR_TIS ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 scalar_t__ UART_FR ; 
 scalar_t__ UART_IIR ; 
 int /*<<< orphan*/  FUNC0 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_port*) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct uart_port*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC7(int irq, void *dev_id)
{
	struct uart_port *port = dev_id;
	unsigned long flags;
	unsigned char status;

	FUNC3(&port->lock,flags);

	status = FUNC2(port->membase + UART_IIR) & IIR_MASK;
	while (status) {
		if (status & IIR_RIS)
			FUNC0(port);
		if (status & IIR_TIS)
			FUNC1(port);
		if (status & IIR_MIS) {
			if (FUNC2(port->membase + UART_FR) & FR_CTS)
				FUNC5(port, 1);
			else
				FUNC5(port, 0);
		}
		FUNC6(0, port->membase + UART_IIR);
		status = FUNC2(port->membase + UART_IIR) & IIR_MASK;
	}

	FUNC4(&port->lock,flags);
	return IRQ_HANDLED;
}