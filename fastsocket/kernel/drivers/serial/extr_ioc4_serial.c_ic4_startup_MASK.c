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
struct uart_state {int dummy; } ;
struct uart_port {int /*<<< orphan*/  lock; struct uart_state* state; } ;
struct ioc4_port {int /*<<< orphan*/ * ip_port; struct ioc4_control* ip_control; } ;
struct ioc4_control {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 struct ioc4_port* FUNC0 (struct uart_port*,int) ; 
 int FUNC1 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct uart_port *the_port)
{
	int retval;
	struct ioc4_port *port;
	struct ioc4_control *control;
	struct uart_state *state;
	unsigned long port_flags;

	if (!the_port)
		return -ENODEV;
	port = FUNC0(the_port, 1);
	if (!port)
		return -ENODEV;
	state = the_port->state;

	control = port->ip_control;
	if (!control) {
		port->ip_port = NULL;
		return -ENODEV;
	}

	/* Start up the serial port */
	FUNC2(&the_port->lock, port_flags);
	retval = FUNC1(the_port);
	FUNC3(&the_port->lock, port_flags);
	return retval;
}