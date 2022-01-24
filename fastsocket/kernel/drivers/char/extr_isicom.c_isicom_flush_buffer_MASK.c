#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct tty_struct {int /*<<< orphan*/  name; struct isi_port* driver_data; } ;
struct isi_port {scalar_t__ xmit_tail; scalar_t__ xmit_head; scalar_t__ xmit_cnt; struct isi_board* card; } ;
struct isi_board {int /*<<< orphan*/  card_lock; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct isi_port*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct tty_struct*) ; 

__attribute__((used)) static void FUNC4(struct tty_struct *tty)
{
	struct isi_port *port = tty->driver_data;
	struct isi_board *card = port->card;
	unsigned long flags;

	if (FUNC0(port, tty->name, "isicom_flush_buffer"))
		return;

	FUNC1(&card->card_lock, flags);
	port->xmit_cnt = port->xmit_head = port->xmit_tail = 0;
	FUNC2(&card->card_lock, flags);

	FUNC3(tty);
}