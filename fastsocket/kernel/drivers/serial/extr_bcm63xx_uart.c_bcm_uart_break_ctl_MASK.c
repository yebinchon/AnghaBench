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
 int /*<<< orphan*/  UART_CTL_REG ; 
 unsigned int UART_CTL_XMITBRK_MASK ; 
 unsigned int FUNC0 (struct uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_port*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct uart_port *port, int ctl)
{
	unsigned long flags;
	unsigned int val;

	FUNC2(&port->lock, flags);

	val = FUNC0(port, UART_CTL_REG);
	if (ctl)
		val |= UART_CTL_XMITBRK_MASK;
	else
		val &= ~UART_CTL_XMITBRK_MASK;
	FUNC1(port, val, UART_CTL_REG);

	FUNC3(&port->lock, flags);
}