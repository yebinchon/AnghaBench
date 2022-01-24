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
struct uart_port {scalar_t__ membase; } ;

/* Variables and functions */
 unsigned int RTS_CR_RTS ; 
 unsigned int TIOCM_RTS ; 
 scalar_t__ UART_RTS_CR ; 
 unsigned int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct uart_port *port, unsigned int mctrl)
{
	unsigned int val;

	/* FIXME: Locking needed ? */
	if (mctrl & TIOCM_RTS) {
		val = FUNC0(port->membase + UART_RTS_CR);
		FUNC1(val | RTS_CR_RTS, port->membase + UART_RTS_CR);
	}
}