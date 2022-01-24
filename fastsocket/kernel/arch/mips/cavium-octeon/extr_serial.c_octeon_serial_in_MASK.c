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
typedef  int /*<<< orphan*/  uint64_t ;
struct uart_port {scalar_t__ membase; } ;

/* Variables and functions */
 int UART_IIR ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 

unsigned int FUNC1(struct uart_port *up, int offset)
{
	int rv = FUNC0((uint64_t)(up->membase + (offset << 3)));
	if (offset == UART_IIR && (rv & 0xf) == 7) {
		/* Busy interrupt, read the USR (39) and try again. */
		FUNC0((uint64_t)(up->membase + (39 << 3)));
		rv = FUNC0((uint64_t)(up->membase + (offset << 3)));
	}
	return rv;
}