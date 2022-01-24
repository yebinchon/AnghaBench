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
struct tty_port {int /*<<< orphan*/  mutex; } ;
struct uart_state {struct tty_port port; struct uart_port* uart_port; } ;
struct uart_port {int dummy; } ;
struct tty_struct {int flags; struct uart_state* driver_data; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int TTY_IO_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct file*) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_port*,unsigned int,unsigned int) ; 

__attribute__((used)) static int
FUNC4(struct tty_struct *tty, struct file *file,
	      unsigned int set, unsigned int clear)
{
	struct uart_state *state = tty->driver_data;
	struct uart_port *uport = state->uart_port;
	struct tty_port *port = &state->port;
	int ret = -EIO;

	FUNC0(&port->mutex);
	if ((!file || !FUNC2(file)) &&
	    !(tty->flags & (1 << TTY_IO_ERROR))) {
		FUNC3(uport, set, clear);
		ret = 0;
	}
	FUNC1(&port->mutex);
	return ret;
}