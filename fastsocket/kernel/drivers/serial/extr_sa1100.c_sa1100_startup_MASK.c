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
struct TYPE_2__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  irq; } ;
struct sa1100_port {TYPE_1__ port; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sa1100_port*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sa1100_port*,int) ; 
 int UTCR3_RIE ; 
 int UTCR3_RXE ; 
 int UTCR3_TXE ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct sa1100_port*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  sa1100_int ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct uart_port *port)
{
	struct sa1100_port *sport = (struct sa1100_port *)port;
	int retval;

	/*
	 * Allocate the IRQ
	 */
	retval = FUNC2(sport->port.irq, sa1100_int, 0,
			     "sa11x0-uart", sport);
	if (retval)
		return retval;

	/*
	 * Finally, clear and enable interrupts
	 */
	FUNC1(sport, -1);
	FUNC0(sport, UTCR3_RXE | UTCR3_TXE | UTCR3_RIE);

	/*
	 * Enable modem status interrupts
	 */
	FUNC4(&sport->port.lock);
	FUNC3(&sport->port);
	FUNC5(&sport->port.lock);

	return 0;
}