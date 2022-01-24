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
struct tty_struct {struct sdio_uart_port* driver_data; int /*<<< orphan*/  index; } ;
struct sdio_uart_port {int /*<<< orphan*/  open_lock; int /*<<< orphan*/  opened; struct tty_struct* tty; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct sdio_uart_port* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sdio_uart_port*) ; 
 int FUNC4 (struct sdio_uart_port*) ; 

__attribute__((used)) static int FUNC5 (struct tty_struct *tty, struct file * filp)
{
	struct sdio_uart_port *port;
	int ret;

	port = FUNC2(tty->index);
	if (!port)
		return -ENODEV;

	FUNC0(&port->open_lock);

	/*
	 * Make sure not to mess up with a dead port
	 * which has not been closed yet.
	 */
	if (tty->driver_data && tty->driver_data != port) {
		FUNC1(&port->open_lock);
		FUNC3(port);
		return -EBUSY;
	}

	if (!port->opened) {
		tty->driver_data = port;
		port->tty = tty;
		ret = FUNC4(port);
		if (ret) {
			tty->driver_data = NULL;
			port->tty = NULL;
			FUNC1(&port->open_lock);
			FUNC3(port);
			return ret;
		}
	}
	port->opened++;
	FUNC1(&port->open_lock);
	return 0;
}