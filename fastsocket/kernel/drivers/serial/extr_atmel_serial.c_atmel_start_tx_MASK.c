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

/* Variables and functions */
 int ATMEL_PDC_TXTEN ; 
 int ATMEL_US_ENDTX ; 
 int ATMEL_US_TXBUFE ; 
 int ATMEL_US_TXRDY ; 
 int FUNC0 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_port*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_port*,int) ; 
 scalar_t__ FUNC3 (struct uart_port*) ; 

__attribute__((used)) static void FUNC4(struct uart_port *port)
{
	if (FUNC3(port)) {
		if (FUNC0(port) & ATMEL_PDC_TXTEN)
			/* The transmitter is already running.  Yes, we
			   really need this.*/
			return;

		FUNC1(port, ATMEL_US_ENDTX | ATMEL_US_TXBUFE);
		/* re-enable PDC transmit */
		FUNC2(port, ATMEL_PDC_TXTEN);
	} else
		FUNC1(port, ATMEL_US_TXRDY);
}