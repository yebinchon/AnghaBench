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
struct uart_port {int regshift; int (* serial_in ) (struct uart_port*,int) ;scalar_t__ membase; } ;
struct uart_8250_port {int lcr; } ;

/* Variables and functions */
 int UART_IER ; 
 int UART_LCR ; 
 int UART_TX ; 
 int FUNC0 (struct uart_port*,int) ; 
 int FUNC1 (struct uart_port*,int) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct uart_port *p, int offset, int value)
{
	int save_offset = offset;
	offset = FUNC0(p, offset) << p->regshift;
	/* Save the LCR value so it can be re-written when a
	 * Busy Detect interrupt occurs. */
	if (save_offset == UART_LCR) {
		struct uart_8250_port *up = (struct uart_8250_port *)p;
		up->lcr = value;
	}
	FUNC2(value, p->membase + offset);
	/* Read the IER to ensure any interrupt is cleared before
	 * returning from ISR. */
	if (save_offset == UART_TX || save_offset == UART_IER)
		value = p->serial_in(p, UART_IER);
}