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
struct uart_port_lh7a40x {int /*<<< orphan*/  statusPrev; } ;
struct uart_port {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct uart_port*,int /*<<< orphan*/ ,int) ; 
 int RxInt ; 
 int RxTimeoutInt ; 
 int SIRDIS ; 
 int UARTEN ; 
 int /*<<< orphan*/  UART_R_CON ; 
 int /*<<< orphan*/  UART_R_INTEN ; 
 int /*<<< orphan*/  UART_R_STATUS ; 
 int /*<<< orphan*/  FUNC1 (struct uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lh7a40xuart_int ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct uart_port*) ; 

__attribute__((used)) static int FUNC3 (struct uart_port* port)
{
	int retval;

	retval = FUNC2 (port->irq, lh7a40xuart_int, 0,
			      "serial_lh7a40x", port);
	if (retval)
		return retval;

				/* Initial modem control-line settings */
	((struct uart_port_lh7a40x*) port)->statusPrev
		= FUNC1 (port, UART_R_STATUS);

	/* There is presently no configuration option to enable IR.
	   Thus, we always disable it. */

	FUNC0 (port, UART_R_CON, UARTEN | SIRDIS);
	FUNC0 (port, UART_R_INTEN, RxTimeoutInt | RxInt);

	return 0;
}