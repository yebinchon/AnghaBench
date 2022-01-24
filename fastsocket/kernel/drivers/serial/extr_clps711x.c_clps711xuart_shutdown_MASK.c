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
 int /*<<< orphan*/  FUNC0 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_port*) ; 
 unsigned int SYSCON_UARTEN ; 
 int /*<<< orphan*/  FUNC2 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_port*) ; 
 unsigned int UBRLCR_BREAK ; 
 unsigned int UBRLCR_FIFOEN ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct uart_port*) ; 

__attribute__((used)) static void FUNC7(struct uart_port *port)
{
	unsigned int ubrlcr, syscon;

	/*
	 * Free the interrupt
	 */
	FUNC6(FUNC2(port), port);	/* TX interrupt */
	FUNC6(FUNC0(port), port);	/* RX interrupt */

	/*
	 * disable the port
	 */
	syscon = FUNC4(FUNC1(port));
	syscon &= ~SYSCON_UARTEN;
	FUNC5(syscon, FUNC1(port));

	/*
	 * disable break condition and fifos
	 */
	ubrlcr = FUNC4(FUNC3(port));
	ubrlcr &= ~(UBRLCR_FIFOEN | UBRLCR_BREAK);
	FUNC5(ubrlcr, FUNC3(port));
}