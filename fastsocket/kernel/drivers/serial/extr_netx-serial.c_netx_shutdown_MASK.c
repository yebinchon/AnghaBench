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
struct uart_port {int /*<<< orphan*/  irq; scalar_t__ membase; } ;

/* Variables and functions */
 scalar_t__ UART_CR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct uart_port*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct uart_port *port)
{
	FUNC1(0, port->membase + UART_CR) ;

	FUNC0(port->irq, port);
}