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

/* Variables and functions */
 unsigned int LINE_CR_BRK ; 
 scalar_t__ UART_LINE_CR ; 
 unsigned int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct uart_port *port, int break_state)
{
	unsigned int line_cr;
	FUNC1(&port->lock);

	line_cr = FUNC0(port->membase + UART_LINE_CR);
	if (break_state != 0)
		line_cr |= LINE_CR_BRK;
	else
		line_cr &= ~LINE_CR_BRK;
	FUNC3(line_cr, port->membase + UART_LINE_CR);

	FUNC2(&port->lock);
}