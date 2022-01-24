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
struct tty_struct {scalar_t__ hw_stopped; scalar_t__ stopped; struct gs_port* driver_data; } ;
struct TYPE_3__ {int /*<<< orphan*/  flags; } ;
struct gs_port {scalar_t__ xmit_cnt; TYPE_2__* rd; TYPE_1__ port; int /*<<< orphan*/  xmit_buf; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* enable_tx_interrupts ) (struct gs_port*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  GS_TX_INTEN ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct gs_port*) ; 

void FUNC3(struct tty_struct * tty)
{
	struct gs_port *port;

	FUNC0 ();

	port = tty->driver_data;

	if (!port) return;

	if (port->xmit_cnt <= 0 || tty->stopped || tty->hw_stopped ||
	    !port->xmit_buf) {
		FUNC1 ();
		return;
	}

	/* Beats me -- REW */
	port->port.flags |= GS_TX_INTEN;
	port->rd->enable_tx_interrupts (port);
	FUNC1 ();
}