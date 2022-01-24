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
struct TYPE_2__ {int flags; int /*<<< orphan*/  tty; } ;
struct gs_port {TYPE_1__ port; } ;

/* Variables and functions */
 int ASYNC_SAK ; 
 int /*<<< orphan*/  TTY_BREAK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(struct gs_port *port)
{
	FUNC1 ();

	FUNC3(port->port.tty, 0, TTY_BREAK);
	FUNC4(port->port.tty);
	if (port->port.flags & ASYNC_SAK) {
		FUNC0 (port->port.tty);
	}

	FUNC2 ();
}