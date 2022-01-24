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
struct TYPE_2__ {int /*<<< orphan*/  irq; } ;
struct sa1100_port {TYPE_1__ port; int /*<<< orphan*/  timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sa1100_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct sa1100_port*) ; 

__attribute__((used)) static void FUNC3(struct uart_port *port)
{
	struct sa1100_port *sport = (struct sa1100_port *)port;

	/*
	 * Stop our timer.
	 */
	FUNC1(&sport->timer);

	/*
	 * Free the interrupt
	 */
	FUNC2(sport->port.irq, sport);

	/*
	 * Disable all interrupts, port and break condition.
	 */
	FUNC0(sport, 0);
}