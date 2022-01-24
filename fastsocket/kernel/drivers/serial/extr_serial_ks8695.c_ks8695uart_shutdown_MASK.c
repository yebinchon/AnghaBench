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
struct uart_port {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  KS8695_IRQ_UART_LINE_STATUS ; 
 int /*<<< orphan*/  KS8695_IRQ_UART_MODEM_STATUS ; 
 int /*<<< orphan*/  KS8695_IRQ_UART_RX ; 
 int /*<<< orphan*/  KS8695_IRQ_UART_TX ; 
 int FUNC0 (struct uart_port*) ; 
 int FUNC1 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_port*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_port*,int) ; 
 int URFC_URFE ; 
 int URLC_URSBC ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct uart_port*) ; 

__attribute__((used)) static void FUNC5(struct uart_port *port)
{
	/*
	 * Free the interrupt
	 */
	FUNC4(KS8695_IRQ_UART_RX, port);
	FUNC4(KS8695_IRQ_UART_TX, port);
	FUNC4(KS8695_IRQ_UART_MODEM_STATUS, port);
	FUNC4(KS8695_IRQ_UART_LINE_STATUS, port);

	/* disable break condition and fifos */
	FUNC3(port, FUNC1(port) & ~URLC_URSBC);
	FUNC2(port, FUNC0(port) & ~URFC_URFE);
}