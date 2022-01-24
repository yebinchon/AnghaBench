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
struct uart_state {int /*<<< orphan*/  xmit; struct uart_port* uart_port; } ;
struct uart_port {int /*<<< orphan*/  lock; TYPE_1__* ops; } ;
struct tty_struct {int /*<<< orphan*/  index; struct uart_state* driver_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* flush_buffer ) (struct uart_port*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC5 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct tty_struct *tty)
{
	struct uart_state *state = tty->driver_data;
	struct uart_port *port;
	unsigned long flags;

	/*
	 * This means you called this function _after_ the port was
	 * closed.  No cookie for you.
	 */
	if (!state) {
		FUNC0(1);
		return;
	}

	port = state->uart_port;
	FUNC1("uart_flush_buffer(%d) called\n", tty->index);

	FUNC2(&port->lock, flags);
	FUNC6(&state->xmit);
	if (port->ops->flush_buffer)
		port->ops->flush_buffer(port);
	FUNC3(&port->lock, flags);
	FUNC5(tty);
}