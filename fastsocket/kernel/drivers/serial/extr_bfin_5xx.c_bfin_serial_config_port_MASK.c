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
struct uart_port {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  type; } ;
struct bfin_serial_port {TYPE_1__ port; } ;

/* Variables and functions */
 int /*<<< orphan*/  PORT_BFIN ; 
 int UART_CONFIG_TYPE ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC1(struct uart_port *port, int flags)
{
	struct bfin_serial_port *uart = (struct bfin_serial_port *)port;

	if (flags & UART_CONFIG_TYPE &&
	    FUNC0(&uart->port) == 0)
		uart->port.type = PORT_BFIN;
}