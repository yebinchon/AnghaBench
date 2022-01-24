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
struct uart_state {struct uart_port* uart_port; } ;
struct uart_port {scalar_t__ x_char; } ;
struct tty_struct {TYPE_1__* termios; struct uart_state* driver_data; } ;
struct TYPE_2__ {int c_cflag; } ;

/* Variables and functions */
 int CDTRDSR ; 
 int CRTSCTS ; 
 scalar_t__ FUNC0 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC1 (struct tty_struct*) ; 
 int /*<<< orphan*/  TIOCM_DTR ; 
 int /*<<< orphan*/  TIOCM_RTS ; 
 int /*<<< orphan*/  FUNC2 (struct tty_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_port*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct tty_struct *tty)
{
	struct uart_state *state = tty->driver_data;
	struct uart_port *port = state->uart_port;

	if (FUNC0(tty)) {
		if (port->x_char)
			port->x_char = 0;
		else
			FUNC2(tty, FUNC1(tty));
	}

	if (tty->termios->c_cflag & CRTSCTS)
		FUNC3(port, TIOCM_RTS);
	if (tty->termios->c_cflag & CDTRDSR)
		FUNC3(port, TIOCM_DTR);
}