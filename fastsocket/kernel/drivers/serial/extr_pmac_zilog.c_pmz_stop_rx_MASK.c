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
struct uart_pmac_port {int /*<<< orphan*/ * curregs; int /*<<< orphan*/ * node; } ;

/* Variables and functions */
 size_t R1 ; 
 int /*<<< orphan*/  RxINT_MASK ; 
 scalar_t__ FUNC0 (struct uart_pmac_port*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_pmac_port*) ; 
 struct uart_pmac_port* FUNC3 (struct uart_port*) ; 

__attribute__((used)) static void FUNC4(struct uart_port *port)
{
	struct uart_pmac_port *uap = FUNC3(port);

	if (FUNC0(uap) || uap->node == NULL)
		return;

	FUNC1("pmz: stop_rx()()\n");

	/* Disable all RX interrupts.  */
	uap->curregs[R1] &= ~RxINT_MASK;
	FUNC2(uap);

	FUNC1("pmz: stop_rx() done.\n");
}