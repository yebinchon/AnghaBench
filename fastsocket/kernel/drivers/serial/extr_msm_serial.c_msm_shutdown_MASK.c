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
struct uart_port {int /*<<< orphan*/  irq; } ;
struct msm_port {int /*<<< orphan*/  clk; scalar_t__ imr; } ;

/* Variables and functions */
 int /*<<< orphan*/  UART_IMR ; 
 struct msm_port* FUNC0 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct uart_port*) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct uart_port *port)
{
	struct msm_port *msm_port = FUNC0(port);

	msm_port->imr = 0;
	FUNC3(port, 0, UART_IMR); /* disable interrupts */

	FUNC1(msm_port->clk);

	FUNC2(port->irq, port);
}