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
struct ioc3_port {TYPE_1__* ip_hooks; } ;
struct TYPE_2__ {int /*<<< orphan*/  intr_tx_mt; } ;

/* Variables and functions */
 int /*<<< orphan*/  N_OUTPUT_LOWAT ; 
 int /*<<< orphan*/  FUNC0 (struct ioc3_port*,int /*<<< orphan*/ ) ; 
 struct ioc3_port* FUNC1 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct ioc3_port*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct uart_port *the_port)
{
	struct ioc3_port *port = FUNC1(the_port);

	if (port) {
		FUNC2(port, N_OUTPUT_LOWAT, 1);
		FUNC0(port, port->ip_hooks->intr_tx_mt);
	}
}