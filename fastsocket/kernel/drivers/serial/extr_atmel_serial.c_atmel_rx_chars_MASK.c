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
struct atmel_uart_port {int break_active; int /*<<< orphan*/  tasklet; } ;

/* Variables and functions */
 unsigned int ATMEL_US_FRAME ; 
 unsigned int ATMEL_US_OVRE ; 
 unsigned int ATMEL_US_PARE ; 
 int /*<<< orphan*/  ATMEL_US_RSTSTA ; 
 unsigned int ATMEL_US_RXBRK ; 
 unsigned int ATMEL_US_RXRDY ; 
 unsigned int FUNC0 (struct uart_port*) ; 
 unsigned int FUNC1 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_port*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct uart_port*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct uart_port*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct atmel_uart_port* FUNC7 (struct uart_port*) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static void FUNC9(struct uart_port *port)
{
	struct atmel_uart_port *atmel_port = FUNC7(port);
	unsigned int status, ch;

	status = FUNC1(port);
	while (status & ATMEL_US_RXRDY) {
		ch = FUNC0(port);

		/*
		 * note that the error handling code is
		 * out of the main execution path
		 */
		if (FUNC8(status & (ATMEL_US_PARE | ATMEL_US_FRAME
				       | ATMEL_US_OVRE | ATMEL_US_RXBRK)
			     || atmel_port->break_active)) {

			/* clear error */
			FUNC2(port, ATMEL_US_RSTSTA);

			if (status & ATMEL_US_RXBRK
			    && !atmel_port->break_active) {
				atmel_port->break_active = 1;
				FUNC4(port, ATMEL_US_RXBRK);
			} else {
				/*
				 * This is either the end-of-break
				 * condition or we've received at
				 * least one character without RXBRK
				 * being set. In both cases, the next
				 * RXBRK will indicate start-of-break.
				 */
				FUNC3(port, ATMEL_US_RXBRK);
				status &= ~ATMEL_US_RXBRK;
				atmel_port->break_active = 0;
			}
		}

		FUNC5(port, status, ch);
		status = FUNC1(port);
	}

	FUNC6(&atmel_port->tasklet);
}