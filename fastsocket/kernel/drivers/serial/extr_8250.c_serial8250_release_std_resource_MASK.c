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
struct TYPE_2__ {int iotype; int flags; int /*<<< orphan*/  iobase; int /*<<< orphan*/  mapbase; int /*<<< orphan*/ * membase; } ;
struct uart_8250_port {TYPE_1__ port; } ;

/* Variables and functions */
 int UPF_IOREMAP ; 
#define  UPIO_AU 134 
#define  UPIO_DWAPB 133 
#define  UPIO_HUB6 132 
#define  UPIO_MEM 131 
#define  UPIO_MEM32 130 
#define  UPIO_PORT 129 
#define  UPIO_TSI 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int FUNC3 (struct uart_8250_port*) ; 

__attribute__((used)) static void FUNC4(struct uart_8250_port *up)
{
	unsigned int size = FUNC3(up);

	switch (up->port.iotype) {
	case UPIO_AU:
	case UPIO_TSI:
	case UPIO_MEM32:
	case UPIO_MEM:
	case UPIO_DWAPB:
		if (!up->port.mapbase)
			break;

		if (up->port.flags & UPF_IOREMAP) {
			FUNC0(up->port.membase);
			up->port.membase = NULL;
		}

		FUNC1(up->port.mapbase, size);
		break;

	case UPIO_HUB6:
	case UPIO_PORT:
		FUNC2(up->port.iobase, size);
		break;
	}
}