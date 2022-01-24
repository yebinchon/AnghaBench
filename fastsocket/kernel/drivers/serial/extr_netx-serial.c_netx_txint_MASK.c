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
struct uart_port {TYPE_1__* state; } ;
struct circ_buf {int dummy; } ;
struct TYPE_2__ {struct circ_buf xmit; } ;

/* Variables and functions */
 scalar_t__ WAKEUP_CHARS ; 
 int /*<<< orphan*/  FUNC0 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_port*) ; 
 scalar_t__ FUNC2 (struct circ_buf*) ; 
 scalar_t__ FUNC3 (struct circ_buf*) ; 
 scalar_t__ FUNC4 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC5 (struct uart_port*) ; 

__attribute__((used)) static void FUNC6(struct uart_port *port)
{
	struct circ_buf *xmit = &port->state->xmit;

	if (FUNC3(xmit) || FUNC4(port)) {
		FUNC0(port);
		return;
	}

	FUNC1(port);

	if (FUNC2(xmit) < WAKEUP_CHARS)
		FUNC5(port);
}