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
struct TYPE_2__ {scalar_t__ ofs; } ;
struct atmel_uart_port {TYPE_1__ pdc_tx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct uart_port*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct uart_port*) ; 
 struct atmel_uart_port* FUNC2 (struct uart_port*) ; 

__attribute__((used)) static void FUNC3(struct uart_port *port)
{
	struct atmel_uart_port *atmel_port = FUNC2(port);

	if (FUNC1(port)) {
		FUNC0(port, 0);
		atmel_port->pdc_tx.ofs = 0;
	}
}