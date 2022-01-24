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
struct uart_port {int regshift; scalar_t__ membase; } ;

/* Variables and functions */
 int UART_IER ; 
 int UART_IER_UUE ; 
 int FUNC0 (struct uart_port*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct uart_port *p, int offset, int value)
{
	offset = FUNC0(p, offset) << p->regshift;
	if (!((offset == UART_IER) && (value & UART_IER_UUE)))
		FUNC1(value, p->membase + offset);
}