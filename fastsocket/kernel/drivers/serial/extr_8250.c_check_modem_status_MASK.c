#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  rng; } ;
struct TYPE_10__ {TYPE_3__* state; TYPE_1__ icount; } ;
struct uart_8250_port {unsigned int msr_saved_flags; int ier; TYPE_4__ port; } ;
struct TYPE_8__ {int /*<<< orphan*/  delta_msr_wait; } ;
struct TYPE_9__ {TYPE_2__ port; } ;

/* Variables and functions */
 int UART_IER_MSI ; 
 int /*<<< orphan*/  UART_MSR ; 
 unsigned int UART_MSR_ANY_DELTA ; 
 unsigned int UART_MSR_CTS ; 
 unsigned int UART_MSR_DCD ; 
 unsigned int UART_MSR_DCTS ; 
 unsigned int UART_MSR_DDCD ; 
 unsigned int UART_MSR_DDSR ; 
 unsigned int UART_MSR_DSR ; 
 unsigned int UART_MSR_TERI ; 
 unsigned int FUNC0 (struct uart_8250_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static unsigned int FUNC5(struct uart_8250_port *up)
{
	unsigned int status = FUNC0(up, UART_MSR);

	status |= up->msr_saved_flags;
	up->msr_saved_flags = 0;
	if (status & UART_MSR_ANY_DELTA && up->ier & UART_IER_MSI &&
	    up->port.state != NULL) {
		if (status & UART_MSR_TERI)
			up->port.icount.rng++;
		if (status & UART_MSR_DDSR)
			FUNC3(&up->port, status & UART_MSR_DSR);
		if (status & UART_MSR_DDCD)
			FUNC2(&up->port, status & UART_MSR_DCD);
		if (status & UART_MSR_DCTS)
			FUNC1(&up->port, status & UART_MSR_CTS);

		FUNC4(&up->port.state->port.delta_msr_wait);
	}

	return status;
}