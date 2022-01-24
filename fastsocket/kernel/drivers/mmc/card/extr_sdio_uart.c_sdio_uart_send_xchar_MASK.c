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
struct tty_struct {struct sdio_uart_port* driver_data; } ;
struct sdio_uart_port {char x_char; int ier; int /*<<< orphan*/  func; } ;

/* Variables and functions */
 int UART_IER_THRI ; 
 scalar_t__ FUNC0 (struct sdio_uart_port*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sdio_uart_port*) ; 
 int /*<<< orphan*/  FUNC3 (struct sdio_uart_port*) ; 

__attribute__((used)) static void FUNC4(struct tty_struct *tty, char ch)
{
	struct sdio_uart_port *port = tty->driver_data;

	port->x_char = ch;
	if (ch && !(port->ier & UART_IER_THRI)) {
		if (FUNC0(port) != 0)
			return;
		FUNC3(port);
		FUNC1(port->func);
		FUNC2(port);
	}
}