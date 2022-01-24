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
struct isi_port {int dummy; } ;
struct isi_board {int status; int port_count; int /*<<< orphan*/  card_lock; struct isi_port* ports; } ;

/* Variables and functions */
 int BOARD_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 (struct isi_port*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static inline void FUNC3(struct isi_board *bp)
{
	int channel;
	struct isi_port *port;
	unsigned long flags;

	FUNC1(&bp->card_lock, flags);
	if (bp->status & BOARD_ACTIVE) {
		FUNC2(&bp->card_lock, flags);
		return;
	}
	port = bp->ports;
	bp->status |= BOARD_ACTIVE;
	for (channel = 0; channel < bp->port_count; channel++, port++)
		FUNC0(port);
	FUNC2(&bp->card_lock, flags);
}