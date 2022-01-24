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
struct tty_struct {scalar_t__ count; int closing; struct sdio_uart_port* driver_data; } ;
struct sdio_uart_port {scalar_t__ opened; int /*<<< orphan*/  open_lock; int /*<<< orphan*/ * tty; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct sdio_uart_port*) ; 
 int /*<<< orphan*/  FUNC4 (struct sdio_uart_port*) ; 
 int /*<<< orphan*/  FUNC5 (struct tty_struct*) ; 

__attribute__((used)) static void FUNC6(struct tty_struct *tty, struct file * filp)
{
	struct sdio_uart_port *port = tty->driver_data;

	if (!port)
		return;

	FUNC1(&port->open_lock);
	FUNC0(!port->opened);

	/*
	 * This is messy.  The tty layer calls us even when open()
	 * returned an error.  Ignore this close request if tty->count
	 * is larger than port->count.
	 */
	if (tty->count > port->opened) {
		FUNC2(&port->open_lock);
		return;
	}

	if (--port->opened == 0) {
		tty->closing = 1;
		FUNC4(port);
		FUNC5(tty);
		port->tty = NULL;
		tty->driver_data = NULL;
		tty->closing = 0;
	}
	FUNC2(&port->open_lock);
	FUNC3(port);
}