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
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  ATMEL_ISR_PASS_LIMIT ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 unsigned int FUNC0 (struct uart_port*) ; 
 unsigned int FUNC1 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_port*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_port*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct uart_port*,unsigned int) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *dev_id)
{
	struct uart_port *port = dev_id;
	unsigned int status, pending, pass_counter = 0;

	do {
		status = FUNC0(port);
		pending = status & FUNC1(port);
		if (!pending)
			break;

		FUNC2(port, pending);
		FUNC3(port, pending, status);
		FUNC4(port, pending);
	} while (pass_counter++ < ATMEL_ISR_PASS_LIMIT);

	return pass_counter ? IRQ_HANDLED : IRQ_NONE;
}