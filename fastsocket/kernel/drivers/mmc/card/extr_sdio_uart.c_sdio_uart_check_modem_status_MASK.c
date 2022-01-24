#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  cts; int /*<<< orphan*/  dcd; int /*<<< orphan*/  dsr; int /*<<< orphan*/  rng; } ;
struct sdio_uart_port {TYPE_3__* tty; TYPE_1__ icount; } ;
struct TYPE_6__ {int hw_stopped; TYPE_2__* termios; } ;
struct TYPE_5__ {int c_cflag; } ;

/* Variables and functions */
 int CRTSCTS ; 
 int /*<<< orphan*/  UART_MSR ; 
 int UART_MSR_ANY_DELTA ; 
 int UART_MSR_CTS ; 
 int UART_MSR_DCTS ; 
 int UART_MSR_DDCD ; 
 int UART_MSR_DDSR ; 
 int UART_MSR_TERI ; 
 int FUNC0 (struct sdio_uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sdio_uart_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct sdio_uart_port*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 

__attribute__((used)) static void FUNC4(struct sdio_uart_port *port)
{
	int status;

	status = FUNC0(port, UART_MSR);

	if ((status & UART_MSR_ANY_DELTA) == 0)
		return;

	if (status & UART_MSR_TERI)
		port->icount.rng++;
	if (status & UART_MSR_DDSR)
		port->icount.dsr++;
	if (status & UART_MSR_DDCD)
		port->icount.dcd++;
	if (status & UART_MSR_DCTS) {
		port->icount.cts++;
		if (port->tty->termios->c_cflag & CRTSCTS) {
			int cts = (status & UART_MSR_CTS);
			if (port->tty->hw_stopped) {
				if (cts) {
					port->tty->hw_stopped = 0;
					FUNC1(port);
					FUNC3(port->tty);
				}
			} else {
				if (!cts) {
					port->tty->hw_stopped = 1;
					FUNC2(port);
				}
			}
		}
	}
}