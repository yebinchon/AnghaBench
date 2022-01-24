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
struct TYPE_2__ {int /*<<< orphan*/  delta_msr_wait; } ;
struct uart_state {TYPE_1__ port; } ;
struct uart_port {int /*<<< orphan*/  lock; struct uart_state* state; } ;
struct ioc3_port {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  N_ALL ; 
 struct ioc3_port* FUNC0 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC1 (struct ioc3_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct uart_port *the_port)
{
	unsigned long port_flags;
	struct ioc3_port *port;
	struct uart_state *state;

	port = FUNC0(the_port);
	if (!port)
		return;

	state = the_port->state;
	FUNC4(&state->port.delta_msr_wait);

	FUNC2(&the_port->lock, port_flags);
	FUNC1(port, N_ALL, 0);
	FUNC3(&the_port->lock, port_flags);
}