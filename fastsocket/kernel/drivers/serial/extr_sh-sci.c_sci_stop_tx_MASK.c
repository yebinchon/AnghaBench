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
 unsigned short SCI_CTRL_FLAGS_TIE ; 
 int /*<<< orphan*/  SCSCR ; 
 unsigned short FUNC0 (struct uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_port*,int /*<<< orphan*/ ,unsigned short) ; 

__attribute__((used)) static void FUNC2(struct uart_port *port)
{
	unsigned short ctrl;

	/* Clear TIE (Transmit Interrupt Enable) bit in SCSCR */
	ctrl = FUNC0(port, SCSCR);
	ctrl &= ~SCI_CTRL_FLAGS_TIE;
	FUNC1(port, SCSCR, ctrl);
}