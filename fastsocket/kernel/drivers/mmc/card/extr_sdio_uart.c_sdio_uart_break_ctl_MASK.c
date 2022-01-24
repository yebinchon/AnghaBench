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
struct sdio_uart_port {int /*<<< orphan*/  lcr; } ;

/* Variables and functions */
 int /*<<< orphan*/  UART_LCR ; 
 int /*<<< orphan*/  UART_LCR_SBC ; 
 int /*<<< orphan*/  FUNC0 (struct sdio_uart_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct sdio_uart_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct sdio_uart_port*) ; 

__attribute__((used)) static int FUNC3(struct tty_struct *tty, int break_state)
{
	struct sdio_uart_port *port = tty->driver_data;
	int result;

	result = FUNC1(port);
	if (result != 0)
		return result;

	if (break_state == -1)
		port->lcr |= UART_LCR_SBC;
	else
		port->lcr &= ~UART_LCR_SBC;
	FUNC0(port, UART_LCR, port->lcr);

	FUNC2(port);
	return 0;
}