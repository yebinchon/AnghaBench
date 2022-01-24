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
struct TYPE_2__ {int /*<<< orphan*/  pkt_ended; } ;
struct pktcdvd_device {int /*<<< orphan*/  wqueue; TYPE_1__ stats; } ;
struct packet_data {int /*<<< orphan*/  run_sm; int /*<<< orphan*/  io_wait; int /*<<< orphan*/  id; struct pktcdvd_device* pd; } ;
struct bio {struct packet_data* bi_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct pktcdvd_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct bio *bio, int err)
{
	struct packet_data *pkt = bio->bi_private;
	struct pktcdvd_device *pd = pkt->pd;
	FUNC0(!pd);

	FUNC1("pkt_end_io_packet_write: id=%d, err=%d\n", pkt->id, err);

	pd->stats.pkt_ended++;

	FUNC4(pd);
	FUNC2(&pkt->io_wait);
	FUNC3(&pkt->run_sm);
	FUNC5(&pd->wqueue);
}