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
struct TYPE_2__ {unsigned long tx; } ;
struct uart_port {TYPE_1__ icount; } ;
struct circ_buf {unsigned long tail; int /*<<< orphan*/  head; scalar_t__ buf; } ;

/* Variables and functions */
 unsigned long FUNC0 (int /*<<< orphan*/ ,unsigned long,int) ; 
 unsigned long HV_EOK ; 
 int UART_XMIT_SIZE ; 
 unsigned long FUNC1 (scalar_t__) ; 
 unsigned long FUNC2 (unsigned long,unsigned long,unsigned long*) ; 
 int /*<<< orphan*/  FUNC3 (struct circ_buf*) ; 

__attribute__((used)) static void FUNC4(struct uart_port *port, struct circ_buf *xmit)
{
	while (!FUNC3(xmit)) {
		unsigned long ra = FUNC1(xmit->buf + xmit->tail);
		unsigned long len, status, sent;

		len = FUNC0(xmit->head, xmit->tail,
				      UART_XMIT_SIZE);
		status = FUNC2(ra, len, &sent);
		if (status != HV_EOK)
			break;
		xmit->tail = (xmit->tail + sent) & (UART_XMIT_SIZE - 1);
		port->icount.tx += sent;
	}
}