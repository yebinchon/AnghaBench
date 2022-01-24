#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  tx; } ;
struct TYPE_7__ {TYPE_1__ icount; scalar_t__ membase; TYPE_2__* state; } ;
struct imx_port {TYPE_3__ port; } ;
struct circ_buf {size_t tail; int /*<<< orphan*/ * buf; } ;
struct TYPE_6__ {struct circ_buf xmit; } ;

/* Variables and functions */
 int UART_XMIT_SIZE ; 
 scalar_t__ URTX0 ; 
 scalar_t__ UTS ; 
 int UTS_TXFULL ; 
 scalar_t__ WAKEUP_CHARS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (struct circ_buf*) ; 
 scalar_t__ FUNC3 (struct circ_buf*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static inline void FUNC6(struct imx_port *sport)
{
	struct circ_buf *xmit = &sport->port.state->xmit;

	while (!(FUNC1(sport->port.membase + UTS) & UTS_TXFULL)) {
		/* send xmit->buf[xmit->tail]
		 * out the port here */
		FUNC5(xmit->buf[xmit->tail], sport->port.membase + URTX0);
		xmit->tail = (xmit->tail + 1) & (UART_XMIT_SIZE - 1);
		sport->port.icount.tx++;
		if (FUNC3(xmit))
			break;
	}

	if (FUNC2(xmit) < WAKEUP_CHARS)
		FUNC4(&sport->port);

	if (FUNC3(xmit))
		FUNC0(&sport->port);
}