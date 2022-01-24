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
struct uart_port {int dummy; } ;
struct TYPE_2__ {scalar_t__ iotype; scalar_t__ type; } ;
struct uart_8250_port {scalar_t__ cur_iotype; TYPE_1__ port; } ;

/* Variables and functions */
 scalar_t__ PORT_RSA ; 
 scalar_t__ PORT_UNKNOWN ; 
 int PROBE_ANY ; 
 int PROBE_RSA ; 
 int UART_CONFIG_IRQ ; 
 int UART_CONFIG_TYPE ; 
 int /*<<< orphan*/  FUNC0 (struct uart_8250_port*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_8250_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_8250_port*) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_8250_port*) ; 
 int FUNC4 (struct uart_8250_port*) ; 
 int FUNC5 (struct uart_8250_port*) ; 
 int /*<<< orphan*/  FUNC6 (struct uart_port*) ; 

__attribute__((used)) static void FUNC7(struct uart_port *port, int flags)
{
	struct uart_8250_port *up = (struct uart_8250_port *)port;
	int probeflags = PROBE_ANY;
	int ret;

	/*
	 * Find the region that we can probe for.  This in turn
	 * tells us whether we can probe for the type of port.
	 */
	ret = FUNC5(up);
	if (ret < 0)
		return;

	ret = FUNC4(up);
	if (ret < 0)
		probeflags &= ~PROBE_RSA;

	if (up->port.iotype != up->cur_iotype)
		FUNC6(port);

	if (flags & UART_CONFIG_TYPE)
		FUNC0(up, probeflags);
	if (up->port.type != PORT_UNKNOWN && flags & UART_CONFIG_IRQ)
		FUNC1(up);

	if (up->port.type != PORT_RSA && probeflags & PROBE_RSA)
		FUNC2(up);
	if (up->port.type == PORT_UNKNOWN)
		FUNC3(up);
}