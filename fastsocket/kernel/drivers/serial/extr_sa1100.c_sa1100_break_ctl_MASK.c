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
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;
struct sa1100_port {TYPE_1__ port; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct sa1100_port*) ; 
 int /*<<< orphan*/  FUNC1 (struct sa1100_port*,unsigned int) ; 
 unsigned int UTCR3_BRK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct uart_port *port, int break_state)
{
	struct sa1100_port *sport = (struct sa1100_port *)port;
	unsigned long flags;
	unsigned int utcr3;

	FUNC2(&sport->port.lock, flags);
	utcr3 = FUNC0(sport);
	if (break_state == -1)
		utcr3 |= UTCR3_BRK;
	else
		utcr3 &= ~UTCR3_BRK;
	FUNC1(sport, utcr3);
	FUNC3(&sport->port.lock, flags);
}