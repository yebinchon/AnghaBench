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
struct pnx8xxx_port {TYPE_1__ port; } ;

/* Variables and functions */
 int /*<<< orphan*/  PNX8XXX_LCR ; 
 unsigned int PNX8XXX_UART_LCR_TXBREAK ; 
 unsigned int FUNC0 (struct pnx8xxx_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pnx8xxx_port*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct uart_port *port, int break_state)
{
	struct pnx8xxx_port *sport = (struct pnx8xxx_port *)port;
	unsigned long flags;
	unsigned int lcr;

	FUNC2(&sport->port.lock, flags);
	lcr = FUNC0(sport, PNX8XXX_LCR);
	if (break_state == -1)
		lcr |= PNX8XXX_UART_LCR_TXBREAK;
	else
		lcr &= ~PNX8XXX_UART_LCR_TXBREAK;
	FUNC1(sport, PNX8XXX_LCR, lcr);
	FUNC3(&sport->port.lock, flags);
}