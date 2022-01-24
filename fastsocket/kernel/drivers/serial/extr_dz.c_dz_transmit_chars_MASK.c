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
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_7__ {int /*<<< orphan*/  tx; } ;
struct TYPE_8__ {unsigned char x_char; int /*<<< orphan*/  lock; TYPE_2__ icount; TYPE_1__* state; } ;
struct dz_port {TYPE_3__ port; } ;
struct dz_mux {struct dz_port* dport; } ;
struct circ_buf {unsigned char* buf; size_t tail; } ;
struct TYPE_6__ {struct circ_buf xmit; } ;

/* Variables and functions */
 int /*<<< orphan*/  DZ_CSR ; 
 int /*<<< orphan*/  DZ_TDR ; 
 scalar_t__ DZ_WAKEUP_CHARS ; 
 int DZ_XMIT_SIZE ; 
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dz_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dz_port*,int /*<<< orphan*/ ,unsigned char) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct circ_buf*) ; 
 scalar_t__ FUNC7 (struct circ_buf*) ; 
 scalar_t__ FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 

__attribute__((used)) static inline void FUNC10(struct dz_mux *mux)
{
	struct dz_port *dport = &mux->dport[0];
	struct circ_buf *xmit;
	unsigned char tmp;
	u16 status;

	status = FUNC1(dport, DZ_CSR);
	dport = &mux->dport[FUNC0(status)];
	xmit = &dport->port.state->xmit;

	if (dport->port.x_char) {		/* XON/XOFF chars */
		FUNC2(dport, DZ_TDR, dport->port.x_char);
		dport->port.icount.tx++;
		dport->port.x_char = 0;
		return;
	}
	/* If nothing to do or stopped or hardware stopped. */
	if (FUNC7(xmit) || FUNC8(&dport->port)) {
		FUNC4(&dport->port.lock);
		FUNC3(&dport->port);
		FUNC5(&dport->port.lock);
		return;
	}

	/*
	 * If something to do... (remember the dz has no output fifo,
	 * so we go one char at a time) :-<
	 */
	tmp = xmit->buf[xmit->tail];
	xmit->tail = (xmit->tail + 1) & (DZ_XMIT_SIZE - 1);
	FUNC2(dport, DZ_TDR, tmp);
	dport->port.icount.tx++;

	if (FUNC6(xmit) < DZ_WAKEUP_CHARS)
		FUNC9(&dport->port);

	/* Are we are done. */
	if (FUNC7(xmit)) {
		FUNC4(&dport->port.lock);
		FUNC3(&dport->port);
		FUNC5(&dport->port.lock);
	}
}