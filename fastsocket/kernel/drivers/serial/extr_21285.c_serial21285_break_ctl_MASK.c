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
struct uart_port {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 unsigned int* CSR_H_UBRLCR ; 
 unsigned int H_UBRLCR_BREAK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC2(struct uart_port *port, int break_state)
{
	unsigned long flags;
	unsigned int h_lcr;

	FUNC0(&port->lock, flags);
	h_lcr = *CSR_H_UBRLCR;
	if (break_state)
		h_lcr |= H_UBRLCR_BREAK;
	else
		h_lcr &= ~H_UBRLCR_BREAK;
	*CSR_H_UBRLCR = h_lcr;
	FUNC1(&port->lock, flags);
}