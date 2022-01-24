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
struct TYPE_2__ {scalar_t__ type; } ;
struct uart_sunsu_port {int ier; int acr; TYPE_1__ port; } ;
struct uart_port {int dummy; } ;

/* Variables and functions */
 scalar_t__ PORT_16C950 ; 
 int /*<<< orphan*/  UART_ACR ; 
 int UART_ACR_TXDIS ; 
 int /*<<< orphan*/  UART_IER ; 
 int UART_IER_THRI ; 
 int /*<<< orphan*/  FUNC0 (struct uart_sunsu_port*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_sunsu_port*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct uart_port *port)
{
	struct uart_sunsu_port *up = (struct uart_sunsu_port *) port;

	if (!(up->ier & UART_IER_THRI)) {
		up->ier |= UART_IER_THRI;
		FUNC1(up, UART_IER, up->ier);
	}

	/*
	 * Re-enable the transmitter if we disabled it.
	 */
	if (up->port.type == PORT_16C950 && up->acr & UART_ACR_TXDIS) {
		up->acr &= ~UART_ACR_TXDIS;
		FUNC0(up, UART_ACR, up->acr);
	}
}