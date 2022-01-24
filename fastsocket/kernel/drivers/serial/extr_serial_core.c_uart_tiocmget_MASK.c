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
struct tty_port {int /*<<< orphan*/  mutex; } ;
struct uart_state {struct uart_port* uart_port; struct tty_port port; } ;
struct uart_port {int mctrl; int /*<<< orphan*/  lock; TYPE_1__* ops; } ;
struct tty_struct {int flags; struct uart_state* driver_data; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int (* get_mctrl ) (struct uart_port*) ;} ;

/* Variables and functions */
 int EIO ; 
 int TTY_IO_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC5 (struct file*) ; 

__attribute__((used)) static int FUNC6(struct tty_struct *tty, struct file *file)
{
	struct uart_state *state = tty->driver_data;
	struct tty_port *port = &state->port;
	struct uart_port *uport = state->uart_port;
	int result = -EIO;

	FUNC0(&port->mutex);
	if ((!file || !FUNC5(file)) &&
	    !(tty->flags & (1 << TTY_IO_ERROR))) {
		result = uport->mctrl;

		FUNC2(&uport->lock);
		result |= uport->ops->get_mctrl(uport);
		FUNC3(&uport->lock);
	}
	FUNC1(&port->mutex);

	return result;
}