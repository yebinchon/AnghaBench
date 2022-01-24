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
struct TYPE_3__ {int flags; TYPE_2__* tty; } ;
struct gs_port {unsigned char* xmit_buf; int /*<<< orphan*/  driver_lock; TYPE_1__ port; scalar_t__ xmit_tail; scalar_t__ xmit_head; scalar_t__ xmit_cnt; int /*<<< orphan*/  port_write_mutex; } ;
struct TYPE_4__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int ASYNC_INITIALIZED ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int GS_TX_INTEN ; 
 int /*<<< orphan*/  TTY_IO_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 unsigned long FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC9(struct gs_port *port)
{
	unsigned long flags;

	FUNC2 ();

	if (port->port.flags & ASYNC_INITIALIZED) {
		FUNC3 ();
		return 0;
	}
	if (!port->xmit_buf) {
		/* We may sleep in get_zeroed_page() */
		unsigned long tmp;

		tmp = FUNC4(GFP_KERNEL);
		FUNC7 (&port->driver_lock, flags);
		if (port->xmit_buf) 
			FUNC1 (tmp);
		else
			port->xmit_buf = (unsigned char *) tmp;
		FUNC8(&port->driver_lock, flags);
		if (!port->xmit_buf) {
			FUNC3 ();
			return -ENOMEM;
		}
	}

	FUNC7 (&port->driver_lock, flags);
	if (port->port.tty)
		FUNC0(TTY_IO_ERROR, &port->port.tty->flags);
	FUNC6(&port->port_write_mutex);
	port->xmit_cnt = port->xmit_head = port->xmit_tail = 0;
	FUNC8(&port->driver_lock, flags);
	FUNC5(port->port.tty, NULL);
	FUNC7 (&port->driver_lock, flags);
	port->port.flags |= ASYNC_INITIALIZED;
	port->port.flags &= ~GS_TX_INTEN;

	FUNC8(&port->driver_lock, flags);
	FUNC3 ();
	return 0;
}