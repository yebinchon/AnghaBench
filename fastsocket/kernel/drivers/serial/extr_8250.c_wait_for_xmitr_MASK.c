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
struct TYPE_2__ {int flags; } ;
struct uart_8250_port {unsigned int lsr_saved_flags; unsigned int msr_saved_flags; TYPE_1__ port; } ;

/* Variables and functions */
 int ASYNC_CTS_FLOW ; 
 int ASYNC_DSR_FLOW ; 
 unsigned int LSR_SAVE_FLAGS ; 
 unsigned int MSR_SAVE_FLAGS ; 
 int /*<<< orphan*/  UART_LSR ; 
 int /*<<< orphan*/  UART_MSR ; 
 unsigned int UART_MSR_CTS ; 
 unsigned int UART_MSR_DSR ; 
 int UPF_CONS_FLOW ; 
 unsigned int FUNC0 (struct uart_8250_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(struct uart_8250_port *up, int bits)
{
	unsigned int status, tmout = 10000;

	/* Wait up to 10ms for the character(s) to be sent. */
	do {
		status = FUNC0(up, UART_LSR);

		up->lsr_saved_flags |= status & LSR_SAVE_FLAGS;

		if (--tmout == 0)
			break;
		FUNC2(1);
	} while ((status & bits) != bits);

	/* Wait up to 1s for flow control if necessary */
	if (up->port.flags & UPF_CONS_FLOW) {
		unsigned int tmout;
		for (tmout = 1000000; tmout; tmout--) {
			unsigned int msr = FUNC0(up, UART_MSR);

			up->msr_saved_flags |= msr & MSR_SAVE_FLAGS;

			if ((up->port.flags & ASYNC_CTS_FLOW) &&
			    (msr & UART_MSR_CTS))
				break;
			else if ((up->port.flags & ASYNC_DSR_FLOW) &&
				 (msr & UART_MSR_DSR))
				break;

			FUNC2(1);
			FUNC1();
		}
	}
}