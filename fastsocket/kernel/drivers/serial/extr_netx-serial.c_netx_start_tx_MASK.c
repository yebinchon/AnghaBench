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
struct uart_port {scalar_t__ membase; } ;

/* Variables and functions */
 int CR_TIE ; 
 int FR_TXFF ; 
 scalar_t__ UART_CR ; 
 scalar_t__ UART_FR ; 
 int /*<<< orphan*/  FUNC0 (struct uart_port*) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct uart_port *port)
{
	FUNC2(
	    FUNC1(port->membase + UART_CR) | CR_TIE, port->membase + UART_CR);

	if (!(FUNC1(port->membase + UART_FR) & FR_TXFF))
		FUNC0(port);
}