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
struct uart_port {int /*<<< orphan*/  line; } ;
struct ioc3_port {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  PROTO_RS232 ; 
 int /*<<< orphan*/  PROTO_RS422 ; 
 struct ioc3_port* FUNC2 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC3 (struct ioc3_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ioc3_port*) ; 

__attribute__((used)) static inline int FUNC5(struct uart_port *the_port)
{
	struct ioc3_port *port;

	if (!the_port) {
		FUNC1();
		return -1;
	}

	port = FUNC2(the_port);
	if (!port) {
		FUNC1();
		return -1;
	}

	FUNC4(port);

	/* set the protocol */
	FUNC3(port, FUNC0(the_port->line) ? PROTO_RS232 :
							PROTO_RS422);
	return 0;
}