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
struct TYPE_8__ {int fifosize; TYPE_2__ icount; scalar_t__ membase; scalar_t__ x_char; TYPE_1__* state; } ;
struct uart_amba_port {TYPE_3__ port; } ;
struct circ_buf {size_t tail; scalar_t__* buf; } ;
struct TYPE_6__ {struct circ_buf xmit; } ;

/* Variables and functions */
 scalar_t__ UART01x_DR ; 
 int UART_XMIT_SIZE ; 
 scalar_t__ WAKEUP_CHARS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 scalar_t__ FUNC1 (struct circ_buf*) ; 
 scalar_t__ FUNC2 (struct circ_buf*) ; 
 scalar_t__ FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct uart_amba_port *uap)
{
	struct circ_buf *xmit = &uap->port.state->xmit;
	int count;

	if (uap->port.x_char) {
		FUNC5(uap->port.x_char, uap->port.membase + UART01x_DR);
		uap->port.icount.tx++;
		uap->port.x_char = 0;
		return;
	}
	if (FUNC2(xmit) || FUNC3(&uap->port)) {
		FUNC0(&uap->port);
		return;
	}

	count = uap->port.fifosize >> 1;
	do {
		FUNC5(xmit->buf[xmit->tail], uap->port.membase + UART01x_DR);
		xmit->tail = (xmit->tail + 1) & (UART_XMIT_SIZE - 1);
		uap->port.icount.tx++;
		if (FUNC2(xmit))
			break;
	} while (--count > 0);

	if (FUNC1(xmit) < WAKEUP_CHARS)
		FUNC4(&uap->port);

	if (FUNC2(xmit))
		FUNC0(&uap->port);
}