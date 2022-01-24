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
struct atmel_uart_port {int /*<<< orphan*/  tasklet; } ;

/* Variables and functions */
 unsigned int ATMEL_US_ENDTX ; 
 unsigned int ATMEL_US_TXBUFE ; 
 unsigned int ATMEL_US_TXRDY ; 
 int /*<<< orphan*/  FUNC0 (struct uart_port*,unsigned int) ; 
 scalar_t__ FUNC1 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct atmel_uart_port* FUNC3 (struct uart_port*) ; 

__attribute__((used)) static void
FUNC4(struct uart_port *port, unsigned int pending)
{
	struct atmel_uart_port *atmel_port = FUNC3(port);

	if (FUNC1(port)) {
		/* PDC transmit */
		if (pending & (ATMEL_US_ENDTX | ATMEL_US_TXBUFE)) {
			FUNC0(port, ATMEL_US_ENDTX | ATMEL_US_TXBUFE);
			FUNC2(&atmel_port->tasklet);
		}
	} else {
		/* Interrupt transmit */
		if (pending & ATMEL_US_TXRDY) {
			FUNC0(port, ATMEL_US_TXRDY);
			FUNC2(&atmel_port->tasklet);
		}
	}
}