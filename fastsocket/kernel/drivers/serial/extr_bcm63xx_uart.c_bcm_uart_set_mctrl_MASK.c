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
struct uart_port {int dummy; } ;

/* Variables and functions */
 unsigned int TIOCM_DTR ; 
 unsigned int TIOCM_LOOP ; 
 unsigned int TIOCM_RTS ; 
 unsigned int UART_CTL_LOOPBACK_MASK ; 
 int /*<<< orphan*/  UART_CTL_REG ; 
 unsigned int UART_MCTL_DTR_MASK ; 
 int /*<<< orphan*/  UART_MCTL_REG ; 
 unsigned int UART_MCTL_RTS_MASK ; 
 unsigned int FUNC0 (struct uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_port*,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct uart_port *port, unsigned int mctrl)
{
	unsigned int val;

	val = FUNC0(port, UART_MCTL_REG);
	val &= ~(UART_MCTL_DTR_MASK | UART_MCTL_RTS_MASK);
	/* invert of written value is reflected on the pin */
	if (!(mctrl & TIOCM_DTR))
		val |= UART_MCTL_DTR_MASK;
	if (!(mctrl & TIOCM_RTS))
		val |= UART_MCTL_RTS_MASK;
	FUNC1(port, val, UART_MCTL_REG);

	val = FUNC0(port, UART_CTL_REG);
	if (mctrl & TIOCM_LOOP)
		val |= UART_CTL_LOOPBACK_MASK;
	else
		val &= ~UART_CTL_LOOPBACK_MASK;
	FUNC1(port, val, UART_CTL_REG);
}