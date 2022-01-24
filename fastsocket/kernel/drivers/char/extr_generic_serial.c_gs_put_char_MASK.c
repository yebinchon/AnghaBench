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
struct TYPE_2__ {int flags; } ;
struct gs_port {int xmit_cnt; unsigned char* xmit_buf; int xmit_head; int /*<<< orphan*/  port_write_mutex; TYPE_1__ port; } ;

/* Variables and functions */
 int ASYNC_INITIALIZED ; 
 int SERIAL_XMIT_SIZE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct tty_struct * tty, unsigned char ch)
{
	struct gs_port *port;

	FUNC0 (); 

	port = tty->driver_data;

	if (!port) return 0;

	if (! (port->port.flags & ASYNC_INITIALIZED)) return 0;

	/* Take a lock on the serial tranmit buffer! */
	FUNC2(& port->port_write_mutex);

	if (port->xmit_cnt >= SERIAL_XMIT_SIZE - 1) {
		/* Sorry, buffer is full, drop character. Update statistics???? -- REW */
		FUNC3(&port->port_write_mutex);
		return 0;
	}

	port->xmit_buf[port->xmit_head++] = ch;
	port->xmit_head &= SERIAL_XMIT_SIZE - 1;
	port->xmit_cnt++;  /* Characters in buffer */

	FUNC3(&port->port_write_mutex);
	FUNC1 ();
	return 1;
}