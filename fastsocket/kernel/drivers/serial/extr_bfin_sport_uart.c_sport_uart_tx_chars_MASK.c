#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  tx; } ;
struct TYPE_8__ {TYPE_2__ icount; scalar_t__ x_char; TYPE_1__* state; } ;
struct sport_uart_port {TYPE_3__ port; } ;
struct circ_buf {size_t tail; scalar_t__* buf; } ;
struct TYPE_6__ {struct circ_buf xmit; } ;

/* Variables and functions */
 int FUNC0 (struct sport_uart_port*) ; 
 int TXF ; 
 int UART_XMIT_SIZE ; 
 scalar_t__ WAKEUP_CHARS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (struct sport_uart_port*,scalar_t__) ; 
 scalar_t__ FUNC3 (struct circ_buf*) ; 
 scalar_t__ FUNC4 (struct circ_buf*) ; 
 scalar_t__ FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 

__attribute__((used)) static void FUNC7(struct sport_uart_port *up)
{
	struct circ_buf *xmit = &up->port.state->xmit;

	if (FUNC0(up) & TXF)
		return;

	if (up->port.x_char) {
		FUNC2(up, up->port.x_char);
		up->port.icount.tx++;
		up->port.x_char = 0;
		return;
	}

	if (FUNC4(xmit) || FUNC5(&up->port)) {
		FUNC1(&up->port);
		return;
	}

	while(!(FUNC0(up) & TXF) && !FUNC4(xmit)) {
		FUNC2(up, xmit->buf[xmit->tail]);
		xmit->tail = (xmit->tail + 1) & (UART_XMIT_SIZE -1);
		up->port.icount.tx++;
	}

	if (FUNC3(xmit) < WAKEUP_CHARS)
		FUNC6(&up->port);
}