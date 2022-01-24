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
 int /*<<< orphan*/  ATMEL_PDC_RXTDIS ; 
 int ATMEL_US_ENDRX ; 
 int ATMEL_US_RXRDY ; 
 int ATMEL_US_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (struct uart_port*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_port*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct uart_port*) ; 

__attribute__((used)) static void FUNC3(struct uart_port *port)
{
	if (FUNC2(port)) {
		/* disable PDC receive */
		FUNC1(port, ATMEL_PDC_RXTDIS);
		FUNC0(port, ATMEL_US_ENDRX | ATMEL_US_TIMEOUT);
	} else
		FUNC0(port, ATMEL_US_RXRDY);
}