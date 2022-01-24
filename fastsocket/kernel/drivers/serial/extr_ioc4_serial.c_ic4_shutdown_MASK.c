#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_1__* tty; int /*<<< orphan*/  delta_msr_wait; } ;
struct uart_state {TYPE_2__ port; } ;
struct uart_port {int /*<<< orphan*/  lock; struct uart_state* state; } ;
struct ioc4_port {int /*<<< orphan*/  ip_flags; int /*<<< orphan*/ * ip_port; } ;
struct TYPE_3__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  N_ALL ; 
 int /*<<< orphan*/  PORT_INACTIVE ; 
 int /*<<< orphan*/  TTY_IO_ERROR ; 
 struct ioc4_port* FUNC0 (struct uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ioc4_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct uart_port *the_port)
{
	unsigned long port_flags;
	struct ioc4_port *port;
	struct uart_state *state;

	port = FUNC0(the_port, 0);
	if (!port)
		return;

	state = the_port->state;
	port->ip_port = NULL;

	FUNC5(&state->port.delta_msr_wait);

	if (state->port.tty)
		FUNC1(TTY_IO_ERROR, &state->port.tty->flags);

	FUNC3(&the_port->lock, port_flags);
	FUNC2(port, N_ALL, 0);
	port->ip_flags = PORT_INACTIVE;
	FUNC4(&the_port->lock, port_flags);
}