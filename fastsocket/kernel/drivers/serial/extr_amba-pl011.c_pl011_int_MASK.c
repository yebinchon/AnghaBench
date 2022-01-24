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
struct TYPE_2__ {int /*<<< orphan*/  lock; scalar_t__ membase; } ;
struct uart_amba_port {TYPE_1__ port; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 unsigned int AMBA_ISR_PASS_LIMIT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int UART011_CTSMIS ; 
 unsigned int UART011_DCDMIS ; 
 unsigned int UART011_DSRMIS ; 
 scalar_t__ UART011_ICR ; 
 scalar_t__ UART011_MIS ; 
 unsigned int UART011_RIMIS ; 
 unsigned int UART011_RTIS ; 
 unsigned int UART011_RXIS ; 
 unsigned int UART011_TXIS ; 
 int /*<<< orphan*/  FUNC1 (struct uart_amba_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_amba_port*) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_amba_port*) ; 
 unsigned int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (unsigned int,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC8(int irq, void *dev_id)
{
	struct uart_amba_port *uap = dev_id;
	unsigned int status, pass_counter = AMBA_ISR_PASS_LIMIT;
	int handled = 0;

	FUNC5(&uap->port.lock);

	status = FUNC4(uap->port.membase + UART011_MIS);
	if (status) {
		do {
			FUNC7(status & ~(UART011_TXIS|UART011_RTIS|
					  UART011_RXIS),
			       uap->port.membase + UART011_ICR);

			if (status & (UART011_RTIS|UART011_RXIS))
				FUNC2(uap);
			if (status & (UART011_DSRMIS|UART011_DCDMIS|
				      UART011_CTSMIS|UART011_RIMIS))
				FUNC1(uap);
			if (status & UART011_TXIS)
				FUNC3(uap);

			if (pass_counter-- == 0)
				break;

			status = FUNC4(uap->port.membase + UART011_MIS);
		} while (status != 0);
		handled = 1;
	}

	FUNC6(&uap->port.lock);

	return FUNC0(handled);
}