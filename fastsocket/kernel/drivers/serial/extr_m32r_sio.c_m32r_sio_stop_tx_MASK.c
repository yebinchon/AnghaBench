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
struct uart_sio_port {int ier; } ;
struct uart_port {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  UART_IER ; 
 int UART_IER_THRI ; 
 int /*<<< orphan*/  FUNC0 (struct uart_sio_port*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC1(struct uart_port *port)
{
	struct uart_sio_port *up = (struct uart_sio_port *)port;

	if (up->ier & UART_IER_THRI) {
		up->ier &= ~UART_IER_THRI;
		FUNC0(up, UART_IER, up->ier);
	}
}