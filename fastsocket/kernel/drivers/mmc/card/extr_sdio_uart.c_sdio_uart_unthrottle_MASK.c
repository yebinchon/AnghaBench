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
struct tty_struct {TYPE_1__* termios; struct sdio_uart_port* driver_data; } ;
struct sdio_uart_port {int /*<<< orphan*/  func; scalar_t__ x_char; } ;
struct TYPE_2__ {int c_cflag; } ;

/* Variables and functions */
 int CRTSCTS ; 
 scalar_t__ FUNC0 (struct tty_struct*) ; 
 scalar_t__ FUNC1 (struct tty_struct*) ; 
 int /*<<< orphan*/  TIOCM_RTS ; 
 scalar_t__ FUNC2 (struct sdio_uart_port*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sdio_uart_port*) ; 
 int /*<<< orphan*/  FUNC5 (struct sdio_uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sdio_uart_port*) ; 

__attribute__((used)) static void FUNC7(struct tty_struct *tty)
{
	struct sdio_uart_port *port = tty->driver_data;

	if (!FUNC0(tty) && !(tty->termios->c_cflag & CRTSCTS))
		return;

	if (FUNC2(port) != 0)
		return;

	if (FUNC0(tty)) {
		if (port->x_char) {
			port->x_char = 0;
		} else {
			port->x_char = FUNC1(tty);
			FUNC6(port);
		}
	}

	if (tty->termios->c_cflag & CRTSCTS)
		FUNC5(port, TIOCM_RTS);

	FUNC3(port->func);
	FUNC4(port);
}