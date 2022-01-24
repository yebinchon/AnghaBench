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
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;
struct uart_sunsab_port {unsigned char cached_dafo; TYPE_1__ port; int /*<<< orphan*/  irqflags; } ;
struct uart_port {int dummy; } ;

/* Variables and functions */
 unsigned char SAB82532_DAFO_XBRK ; 
 int /*<<< orphan*/  SAB82532_REGS_PENDING ; 
 int /*<<< orphan*/  SAB82532_XPR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_sunsab_port*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct uart_port *port, int break_state)
{
	struct uart_sunsab_port *up = (struct uart_sunsab_port *) port;
	unsigned long flags;
	unsigned char val;

	FUNC1(&up->port.lock, flags);

	val = up->cached_dafo;
	if (break_state)
		val |= SAB82532_DAFO_XBRK;
	else
		val &= ~SAB82532_DAFO_XBRK;
	up->cached_dafo = val;

	FUNC0(SAB82532_REGS_PENDING, &up->irqflags);
	if (FUNC4(SAB82532_XPR, &up->irqflags))
		FUNC3(up);

	FUNC2(&up->port.lock, flags);
}