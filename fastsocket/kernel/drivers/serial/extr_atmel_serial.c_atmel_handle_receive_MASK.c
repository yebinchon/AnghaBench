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
struct atmel_uart_port {scalar_t__ break_active; int /*<<< orphan*/  tasklet; } ;

/* Variables and functions */
 unsigned int ATMEL_US_ENDRX ; 
 unsigned int ATMEL_US_FRAME ; 
 unsigned int ATMEL_US_OVRE ; 
 unsigned int ATMEL_US_PARE ; 
 int /*<<< orphan*/  ATMEL_US_RSTSTA ; 
 unsigned int ATMEL_US_RXBRK ; 
 unsigned int ATMEL_US_RXRDY ; 
 unsigned int ATMEL_US_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (struct uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_port*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_port*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_port*) ; 
 scalar_t__ FUNC4 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct atmel_uart_port* FUNC6 (struct uart_port*) ; 

__attribute__((used)) static void
FUNC7(struct uart_port *port, unsigned int pending)
{
	struct atmel_uart_port *atmel_port = FUNC6(port);

	if (FUNC4(port)) {
		/*
		 * PDC receive. Just schedule the tasklet and let it
		 * figure out the details.
		 *
		 * TODO: We're not handling error flags correctly at
		 * the moment.
		 */
		if (pending & (ATMEL_US_ENDRX | ATMEL_US_TIMEOUT)) {
			FUNC1(port, (ATMEL_US_ENDRX
						| ATMEL_US_TIMEOUT));
			FUNC5(&atmel_port->tasklet);
		}

		if (pending & (ATMEL_US_RXBRK | ATMEL_US_OVRE |
				ATMEL_US_FRAME | ATMEL_US_PARE))
			FUNC2(port, pending);
	}

	/* Interrupt receive */
	if (pending & ATMEL_US_RXRDY)
		FUNC3(port);
	else if (pending & ATMEL_US_RXBRK) {
		/*
		 * End of break detected. If it came along with a
		 * character, atmel_rx_chars will handle it.
		 */
		FUNC0(port, ATMEL_US_RSTSTA);
		FUNC1(port, ATMEL_US_RXBRK);
		atmel_port->break_active = 0;
	}
}