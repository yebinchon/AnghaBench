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
struct TYPE_2__ {int /*<<< orphan*/  timeout; } ;
struct uart_8250_port {TYPE_1__ port; int /*<<< orphan*/  timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  UART_IIR ; 
 unsigned int UART_IIR_NO_INT ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_8250_port*) ; 
 unsigned int FUNC3 (struct uart_8250_port*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(unsigned long data)
{
	struct uart_8250_port *up = (struct uart_8250_port *)data;
	unsigned int iir;

	iir = FUNC3(up, UART_IIR);
	if (!(iir & UART_IIR_NO_INT))
		FUNC2(up);
	FUNC0(&up->timer, jiffies + FUNC1(up->port.timeout));
}