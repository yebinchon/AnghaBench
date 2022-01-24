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
struct tty_struct {struct gs_port* driver_data; } ;
struct TYPE_2__ {int flags; int /*<<< orphan*/  open_wait; int /*<<< orphan*/  lock; scalar_t__ count; struct tty_struct* tty; } ;
struct gs_port {TYPE_1__ port; } ;

/* Variables and functions */
 int ASYNC_NORMAL_ACTIVE ; 
 int GS_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct gs_port*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct tty_struct *tty)
{
	struct gs_port *port;
	unsigned long flags;

	FUNC0 ();

	port = tty->driver_data;
	tty = port->port.tty;
	if (!tty) 
		return;

	FUNC2 (port);
	FUNC3(&port->port.lock, flags);
	port->port.flags &= ~(ASYNC_NORMAL_ACTIVE|GS_ACTIVE);
	port->port.tty = NULL;
	port->port.count = 0;
	FUNC4(&port->port.lock, flags);

	FUNC5(&port->port.open_wait);
	FUNC1 ();
}