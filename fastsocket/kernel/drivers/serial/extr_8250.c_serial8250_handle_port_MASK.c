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
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;
struct uart_8250_port {TYPE_1__ port; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,unsigned int) ; 
 int /*<<< orphan*/  UART_LSR ; 
 unsigned int UART_LSR_BI ; 
 unsigned int UART_LSR_DR ; 
 unsigned int UART_LSR_THRE ; 
 int /*<<< orphan*/  FUNC1 (struct uart_8250_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_8250_port*,unsigned int*) ; 
 unsigned int FUNC3 (struct uart_8250_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct uart_8250_port*) ; 

__attribute__((used)) static void FUNC7(struct uart_8250_port *up)
{
	unsigned int status;
	unsigned long flags;

	FUNC4(&up->port.lock, flags);

	status = FUNC3(up, UART_LSR);

	FUNC0("status = %x...", status);

	if (status & (UART_LSR_DR | UART_LSR_BI))
		FUNC2(up, &status);
	FUNC1(up);
	if (status & UART_LSR_THRE)
		FUNC6(up);

	FUNC5(&up->port.lock, flags);
}