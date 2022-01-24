#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct uart_port {TYPE_1__* state; } ;
struct circ_buf {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* transmit_chars ) (struct uart_port*,struct circ_buf*) ;} ;
struct TYPE_3__ {struct circ_buf xmit; } ;

/* Variables and functions */
 scalar_t__ WAKEUP_CHARS ; 
 int /*<<< orphan*/  FUNC0 (struct uart_port*,struct circ_buf*) ; 
 TYPE_2__* sunhv_ops ; 
 scalar_t__ FUNC1 (struct circ_buf*) ; 
 scalar_t__ FUNC2 (struct circ_buf*) ; 
 scalar_t__ FUNC3 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC4 (struct uart_port*) ; 

__attribute__((used)) static void FUNC5(struct uart_port *port)
{
	struct circ_buf *xmit;

	if (!port->state)
		return;

	xmit = &port->state->xmit;
	if (FUNC2(xmit) || FUNC3(port))
		return;

	sunhv_ops->transmit_chars(port, xmit);

	if (FUNC1(xmit) < WAKEUP_CHARS)
		FUNC4(port);
}