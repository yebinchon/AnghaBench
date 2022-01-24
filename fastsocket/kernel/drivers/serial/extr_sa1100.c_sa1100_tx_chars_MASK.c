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
struct sa1100_port {TYPE_3__ port; } ;
struct circ_buf {size_t tail; scalar_t__* buf; } ;
struct TYPE_6__ {struct circ_buf xmit; } ;

/* Variables and functions */
 int FUNC0 (struct sa1100_port*) ; 
 int /*<<< orphan*/  FUNC1 (struct sa1100_port*,scalar_t__) ; 
 int UART_XMIT_SIZE ; 
 int UTSR1_TNF ; 
 scalar_t__ WAKEUP_CHARS ; 
 int /*<<< orphan*/  FUNC2 (struct sa1100_port*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 scalar_t__ FUNC4 (struct circ_buf*) ; 
 scalar_t__ FUNC5 (struct circ_buf*) ; 
 scalar_t__ FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 

__attribute__((used)) static void FUNC8(struct sa1100_port *sport)
{
	struct circ_buf *xmit = &sport->port.state->xmit;

	if (sport->port.x_char) {
		FUNC1(sport, sport->port.x_char);
		sport->port.icount.tx++;
		sport->port.x_char = 0;
		return;
	}

	/*
	 * Check the modem control lines before
	 * transmitting anything.
	 */
	FUNC2(sport);

	if (FUNC5(xmit) || FUNC6(&sport->port)) {
		FUNC3(&sport->port);
		return;
	}

	/*
	 * Tried using FIFO (not checking TNF) for fifo fill:
	 * still had the '4 bytes repeated' problem.
	 */
	while (FUNC0(sport) & UTSR1_TNF) {
		FUNC1(sport, xmit->buf[xmit->tail]);
		xmit->tail = (xmit->tail + 1) & (UART_XMIT_SIZE - 1);
		sport->port.icount.tx++;
		if (FUNC5(xmit))
			break;
	}

	if (FUNC4(xmit) < WAKEUP_CHARS)
		FUNC7(&sport->port);

	if (FUNC5(xmit))
		FUNC3(&sport->port);
}