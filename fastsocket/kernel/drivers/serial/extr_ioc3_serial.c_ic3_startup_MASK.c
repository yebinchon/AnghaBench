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
struct uart_port {int /*<<< orphan*/  lock; } ;
struct ioc3_port {struct uart_port* ip_port; struct ioc3_card* ip_card; } ;
struct ioc3_card {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 () ; 
 struct ioc3_port* FUNC1 (struct uart_port*) ; 
 int FUNC2 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct uart_port *the_port)
{
	int retval;
	struct ioc3_port *port;
	struct ioc3_card *card_ptr;
	unsigned long port_flags;

	if (!the_port) {
		FUNC0();
		return -ENODEV;
	}
	port = FUNC1(the_port);
	if (!port) {
		FUNC0();
		return -ENODEV;
	}
	card_ptr = port->ip_card;
	port->ip_port = the_port;

	if (!card_ptr) {
		FUNC0();
		return -ENODEV;
	}

	/* Start up the serial port */
	FUNC3(&the_port->lock, port_flags);
	retval = FUNC2(the_port);
	FUNC4(&the_port->lock, port_flags);
	return retval;
}