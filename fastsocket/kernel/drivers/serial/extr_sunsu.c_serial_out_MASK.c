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
struct TYPE_2__ {int regshift; int iotype; int /*<<< orphan*/  iobase; int /*<<< orphan*/  membase; int /*<<< orphan*/  hub6; } ;
struct uart_sunsu_port {TYPE_1__ port; } ;

/* Variables and functions */
 int UART_MCR ; 
 int UART_MCR_OUT2 ; 
#define  UPIO_HUB6 129 
#define  UPIO_MEM 128 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct uart_sunsu_port *up, int offset, int value)
{
#ifndef CONFIG_SPARC64
	/*
	 * MrCoffee has weird schematics: IRQ4 & P10(?) pins of SuperIO are
	 * connected with a gate then go to SlavIO. When IRQ4 goes tristated
	 * gate outputs a logical one. Since we use level triggered interrupts
	 * we have lockup and watchdog reset. We cannot mask IRQ because
	 * keyboard shares IRQ with us (Word has it as Bob Smelik's design).
	 * This problem is similar to what Alpha people suffer, see serial.c.
	 */
	if (offset == UART_MCR)
		value |= UART_MCR_OUT2;
#endif
	offset <<= up->port.regshift;

	switch (up->port.iotype) {
	case UPIO_HUB6:
		FUNC0(up->port.hub6 - 1 + offset, up->port.iobase);
		FUNC0(value, up->port.iobase + 1);
		break;

	case UPIO_MEM:
		FUNC1(value, up->port.membase + offset);
		break;

	default:
		FUNC0(value, up->port.iobase + offset);
	}
}