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
struct TYPE_2__ {int /*<<< orphan*/  lock; scalar_t__ membase; } ;
struct uart_amba_port {TYPE_1__ port; } ;

/* Variables and functions */
 scalar_t__ UART011_LCRH ; 
 unsigned int UART01x_LCRH_BRK ; 
 unsigned int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct uart_port *port, int break_state)
{
	struct uart_amba_port *uap = (struct uart_amba_port *)port;
	unsigned long flags;
	unsigned int lcr_h;

	FUNC1(&uap->port.lock, flags);
	lcr_h = FUNC0(uap->port.membase + UART011_LCRH);
	if (break_state == -1)
		lcr_h |= UART01x_LCRH_BRK;
	else
		lcr_h &= ~UART01x_LCRH_BRK;
	FUNC3(lcr_h, uap->port.membase + UART011_LCRH);
	FUNC2(&uap->port.lock, flags);
}