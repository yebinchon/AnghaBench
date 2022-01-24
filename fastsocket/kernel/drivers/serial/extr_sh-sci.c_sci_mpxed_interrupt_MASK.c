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
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_NONE ; 
 unsigned short SCI_CTRL_FLAGS_REIE ; 
 unsigned short SCI_CTRL_FLAGS_RIE ; 
 unsigned short SCI_CTRL_FLAGS_TIE ; 
 int /*<<< orphan*/  SCSCR ; 
 int /*<<< orphan*/  SCxSR ; 
 unsigned short FUNC0 (struct uart_port*) ; 
 unsigned short FUNC1 (struct uart_port*) ; 
 unsigned short FUNC2 (struct uart_port*) ; 
 unsigned short FUNC3 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC4 (int,void*) ; 
 int /*<<< orphan*/  FUNC5 (int,void*) ; 
 unsigned short FUNC6 (struct uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,void*) ; 
 int /*<<< orphan*/  FUNC8 (int,void*) ; 

__attribute__((used)) static irqreturn_t FUNC9(int irq, void *ptr)
{
	unsigned short ssr_status, scr_status, err_enabled;
	struct uart_port *port = ptr;
	irqreturn_t ret = IRQ_NONE;

	ssr_status = FUNC6(port, SCxSR);
	scr_status = FUNC6(port, SCSCR);
	err_enabled = scr_status & (SCI_CTRL_FLAGS_REIE | SCI_CTRL_FLAGS_RIE);

	/* Tx Interrupt */
	if ((ssr_status & FUNC3(port)) && (scr_status & SCI_CTRL_FLAGS_TIE))
		ret = FUNC8(irq, ptr);
	/* Rx Interrupt */
	if ((ssr_status & FUNC2(port)) && (scr_status & SCI_CTRL_FLAGS_RIE))
		ret = FUNC7(irq, ptr);
	/* Error Interrupt */
	if ((ssr_status & FUNC1(port)) && err_enabled)
		ret = FUNC5(irq, ptr);
	/* Break Interrupt */
	if ((ssr_status & FUNC0(port)) && err_enabled)
		ret = FUNC4(irq, ptr);

	return ret;
}