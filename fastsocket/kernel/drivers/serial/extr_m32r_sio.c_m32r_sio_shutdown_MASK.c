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
struct TYPE_2__ {int /*<<< orphan*/  irq; } ;
struct uart_sio_port {int /*<<< orphan*/  timer; TYPE_1__ port; scalar_t__ ier; } ;
struct uart_port {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SIOTRCR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_sio_port*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct uart_sio_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct uart_port *port)
{
	struct uart_sio_port *up = (struct uart_sio_port *)port;

	/*
	 * Disable interrupts from this port
	 */
	up->ier = 0;
	FUNC4(up, SIOTRCR, 0);

	/*
	 * Disable break condition and FIFOs
	 */

	FUNC3();

	if (!FUNC1(up->port.irq))
		FUNC0(&up->timer);
	else
		FUNC2(up);
}