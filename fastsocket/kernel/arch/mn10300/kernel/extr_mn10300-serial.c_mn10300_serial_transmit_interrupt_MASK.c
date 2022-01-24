#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_2__* state; } ;
struct mn10300_serial_port {TYPE_3__ uart; int /*<<< orphan*/  name; } ;
struct TYPE_5__ {int /*<<< orphan*/  tty; } ;
struct TYPE_6__ {int /*<<< orphan*/  xmit; TYPE_1__ port; } ;

/* Variables and functions */
 scalar_t__ WAKEUP_CHARS ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mn10300_serial_port*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 

__attribute__((used)) static void FUNC6(struct mn10300_serial_port *port)
{
	FUNC0("%s", port->name);

	if (!port->uart.state || !port->uart.state->port.tty) {
		FUNC1(port);
		return;
	}

	if (FUNC4(&port->uart) ||
	    FUNC3(&port->uart.state->xmit))
		FUNC1(port);

	if (FUNC2(&port->uart.state->xmit) < WAKEUP_CHARS)
		FUNC5(&port->uart);
}