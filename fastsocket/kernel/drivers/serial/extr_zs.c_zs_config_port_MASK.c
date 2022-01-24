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
struct zs_port {int dummy; } ;
struct uart_port {int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  PORT_ZS ; 
 int UART_CONFIG_TYPE ; 
 struct zs_port* FUNC0 (struct uart_port*) ; 
 scalar_t__ FUNC1 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct zs_port*) ; 

__attribute__((used)) static void FUNC3(struct uart_port *uport, int flags)
{
	struct zs_port *zport = FUNC0(uport);

	if (flags & UART_CONFIG_TYPE) {
		if (FUNC1(uport))
			return;

		uport->type = PORT_ZS;

		FUNC2(zport);
	}
}