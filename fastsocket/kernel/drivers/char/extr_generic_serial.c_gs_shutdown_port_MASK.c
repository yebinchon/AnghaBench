#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int flags; TYPE_1__* tty; } ;
struct gs_port {int /*<<< orphan*/  driver_lock; TYPE_3__ port; TYPE_2__* rd; int /*<<< orphan*/ * xmit_buf; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* shutdown_port ) (struct gs_port*) ;} ;
struct TYPE_4__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int ASYNC_INITIALIZED ; 
 int /*<<< orphan*/  TTY_IO_ERROR ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct gs_port*) ; 

__attribute__((used)) static void FUNC7 (struct gs_port *port)
{
	unsigned long flags;

	FUNC1();
	
	if (!port) return;
	
	if (!(port->port.flags & ASYNC_INITIALIZED))
		return;

	FUNC4(&port->driver_lock, flags);

	if (port->xmit_buf) {
		FUNC0((unsigned long) port->xmit_buf);
		port->xmit_buf = NULL;
	}

	if (port->port.tty)
		FUNC3(TTY_IO_ERROR, &port->port.tty->flags);

	port->rd->shutdown_port (port);

	port->port.flags &= ~ASYNC_INITIALIZED;
	FUNC5(&port->driver_lock, flags);

	FUNC2();
}