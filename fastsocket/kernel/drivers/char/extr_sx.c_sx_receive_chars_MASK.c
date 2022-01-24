#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct tty_struct {int /*<<< orphan*/  real_raw; int /*<<< orphan*/  raw; } ;
struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
struct TYPE_4__ {struct tty_struct* tty; } ;
struct TYPE_5__ {TYPE_1__ port; } ;
struct sx_port {int /*<<< orphan*/  line; TYPE_3__* board; TYPE_2__ gs; } ;
struct TYPE_6__ {scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct sx_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SX_DEBUG_RECEIVE ; 
 int /*<<< orphan*/  FUNC1 (struct timeval*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  hi_rxbuf ; 
 int /*<<< orphan*/  hi_rxipos ; 
 int /*<<< orphan*/  hi_rxopos ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int,...) ; 
 int FUNC7 (struct sx_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sx_port*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct tty_struct*) ; 
 int FUNC10 (struct tty_struct*,unsigned char**,int) ; 

__attribute__((used)) static inline void FUNC11(struct sx_port *port)
{
	int c;
	int rx_op;
	struct tty_struct *tty;
	int copied = 0;
	unsigned char *rp;

	FUNC2();
	tty = port->gs.port.tty;
	while (1) {
		rx_op = FUNC7(port, hi_rxopos);
		c = (FUNC7(port, hi_rxipos) - rx_op) & 0xff;

		FUNC6(SX_DEBUG_RECEIVE, "rxop=%d, c = %d.\n", rx_op, c);

		/* Don't copy past the end of the hardware receive buffer */
		if (rx_op + c > 0x100)
			c = 0x100 - rx_op;

		FUNC6(SX_DEBUG_RECEIVE, "c = %d.\n", c);

		/* Don't copy more bytes than there is room for in the buffer */

		c = FUNC10(tty, &rp, c);

		FUNC6(SX_DEBUG_RECEIVE, "c = %d.\n", c);

		/* If for one reason or another, we can't copy more data, we're done! */
		if (c == 0)
			break;

		FUNC6(SX_DEBUG_RECEIVE, "Copying over %d chars. First is "
				"%d at %lx\n", c, FUNC5(port->board,
					FUNC0(port, hi_rxbuf) + rx_op),
				FUNC0(port, hi_rxbuf));
		FUNC4(rp, port->board->base +
				FUNC0(port, hi_rxbuf) + rx_op, c);

		/* This one last. ( Not essential.)
		   It allows the card to start putting more data into the
		   buffer!
		   Update the pointer in the card */
		FUNC8(port, hi_rxopos, (rx_op + c) & 0xff);

		copied += c;
	}
	if (copied) {
		struct timeval tv;

		FUNC1(&tv);
		FUNC6(SX_DEBUG_RECEIVE, "pushing flipq port %d (%3d "
				"chars): %d.%06d  (%d/%d)\n", port->line,
				copied, (int)(tv.tv_sec % 60), (int)tv.tv_usec,
				tty->raw, tty->real_raw);

		/* Tell the rest of the system the news. Great news. New
		   characters! */
		FUNC9(tty);
		/*    tty_schedule_flip (tty); */
	}

	FUNC3();
}