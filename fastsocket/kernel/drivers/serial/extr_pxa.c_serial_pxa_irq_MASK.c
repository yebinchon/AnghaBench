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
struct uart_pxa_port {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  UART_IIR ; 
 unsigned int UART_IIR_NO_INT ; 
 int /*<<< orphan*/  UART_LSR ; 
 unsigned int UART_LSR_DR ; 
 unsigned int UART_LSR_THRE ; 
 int /*<<< orphan*/  FUNC0 (struct uart_pxa_port*) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_pxa_port*,unsigned int*) ; 
 unsigned int FUNC2 (struct uart_pxa_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_pxa_port*) ; 

__attribute__((used)) static inline irqreturn_t FUNC4(int irq, void *dev_id)
{
	struct uart_pxa_port *up = dev_id;
	unsigned int iir, lsr;

	iir = FUNC2(up, UART_IIR);
	if (iir & UART_IIR_NO_INT)
		return IRQ_NONE;
	lsr = FUNC2(up, UART_LSR);
	if (lsr & UART_LSR_DR)
		FUNC1(up, &lsr);
	FUNC0(up);
	if (lsr & UART_LSR_THRE)
		FUNC3(up);
	return IRQ_HANDLED;
}