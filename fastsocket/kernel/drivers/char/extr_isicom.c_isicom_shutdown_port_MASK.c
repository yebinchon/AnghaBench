#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct tty_struct {int /*<<< orphan*/  flags; } ;
struct TYPE_4__ {int flags; } ;
struct isi_port {TYPE_1__ port; struct isi_board* card; } ;
struct isi_board {scalar_t__ count; int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int ASYNC_INITIALIZED ; 
 scalar_t__ FUNC0 (struct tty_struct*) ; 
 int /*<<< orphan*/  TTY_IO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (struct isi_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct isi_board*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 struct tty_struct* FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct isi_port *port)
{
	struct isi_board *card = port->card;
	struct tty_struct *tty;

	tty = FUNC7(&port->port);

	if (!(port->port.flags & ASYNC_INITIALIZED)) {
		FUNC5(tty);
		return;
	}

	FUNC6(&port->port);
	port->port.flags &= ~ASYNC_INITIALIZED;
	/* 3rd October 2000 : Vinayak P Risbud */
	FUNC8(&port->port, NULL);

	/*Fix done by Anil .S on 30-04-2001
	remote login through isi port has dtr toggle problem
	due to which the carrier drops before the password prompt
	appears on the remote end. Now we drop the dtr only if the
	HUPCL(Hangup on close) flag is set for the tty*/

	if (FUNC0(tty))
		/* drop dtr on this port */
		FUNC1(port);

	/* any other port uninits  */
	if (tty)
		FUNC4(TTY_IO_ERROR, &tty->flags);

	if (--card->count < 0) {
		FUNC3("isicom_shutdown_port: bad board(0x%lx) count %d.\n",
			card->base, card->count);
		card->count = 0;
	}

	/* last port was closed, shutdown that boad too */
	if (FUNC0(tty)) {
		if (!card->count)
			FUNC2(card);
	}
	FUNC5(tty);
}