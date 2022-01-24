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
struct uart_port {int dummy; } ;
struct TYPE_2__ {scalar_t__ type; } ;
struct uart_8250_port {int ier; int bugs; unsigned char lsr_saved_flags; int acr; TYPE_1__ port; } ;

/* Variables and functions */
 unsigned char LSR_SAVE_FLAGS ; 
 scalar_t__ PORT_16C950 ; 
 scalar_t__ PORT_RM9000 ; 
 int /*<<< orphan*/  UART_ACR ; 
 int UART_ACR_TXDIS ; 
 int UART_BUG_TXEN ; 
 int /*<<< orphan*/  UART_IER ; 
 int UART_IER_THRI ; 
 int /*<<< orphan*/  UART_LSR ; 
 unsigned char UART_LSR_TEMT ; 
 unsigned char UART_LSR_THRE ; 
 int /*<<< orphan*/  FUNC0 (struct uart_8250_port*,int /*<<< orphan*/ ,int) ; 
 unsigned char FUNC1 (struct uart_8250_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_8250_port*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_8250_port*) ; 

__attribute__((used)) static void FUNC4(struct uart_port *port)
{
	struct uart_8250_port *up = (struct uart_8250_port *)port;

	if (!(up->ier & UART_IER_THRI)) {
		up->ier |= UART_IER_THRI;
		FUNC2(up, UART_IER, up->ier);

		if (up->bugs & UART_BUG_TXEN) {
			unsigned char lsr;
			lsr = FUNC1(up, UART_LSR);
			up->lsr_saved_flags |= lsr & LSR_SAVE_FLAGS;
			if ((up->port.type == PORT_RM9000) ?
				(lsr & UART_LSR_THRE) :
				(lsr & UART_LSR_TEMT))
				FUNC3(up);
		}
	}

	/*
	 * Re-enable the transmitter if we disabled it.
	 */
	if (up->port.type == PORT_16C950 && up->acr & UART_ACR_TXDIS) {
		up->acr &= ~UART_ACR_TXDIS;
		FUNC0(up, UART_ACR, up->acr);
	}
}