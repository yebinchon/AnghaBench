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
struct tty_struct {int /*<<< orphan*/  flags; struct isi_port* driver_data; } ;
struct TYPE_2__ {int flags; int count; } ;
struct isi_port {int channel; TYPE_1__ port; scalar_t__ xmit_tail; scalar_t__ xmit_head; scalar_t__ xmit_cnt; struct isi_board* card; } ;
struct isi_board {int shift_count; int /*<<< orphan*/  card_lock; int /*<<< orphan*/  base; int /*<<< orphan*/  count; } ;

/* Variables and functions */
 int ASYNC_INITIALIZED ; 
 int ENOMEM ; 
 int ISICOM_KILLRX ; 
 int ISICOM_KILLTX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TTY_IO_ERROR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC7 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC8(struct tty_struct *tty)
{
	struct isi_port *port = tty->driver_data;
	struct isi_board *card = port->card;
	unsigned long flags;

	if (port->port.flags & ASYNC_INITIALIZED)
		return 0;
	if (FUNC7(&port->port) < 0)
		return -ENOMEM;

	FUNC5(&card->card_lock, flags);
	FUNC2(TTY_IO_ERROR, &tty->flags);
	if (port->port.count == 1)
		card->count++;

	port->xmit_cnt = port->xmit_head = port->xmit_tail = 0;

	/*	discard any residual data	*/
	if (FUNC1(card->base) == 0) {
		FUNC4(0x8000 | (port->channel << card->shift_count) | 0x02,
				card->base);
		FUNC4(((ISICOM_KILLTX | ISICOM_KILLRX) << 8) | 0x06, card->base);
		FUNC0(card->base);
	}

	FUNC3(tty);
	port->port.flags |= ASYNC_INITIALIZED;
	FUNC6(&card->card_lock, flags);

	return 0;
}