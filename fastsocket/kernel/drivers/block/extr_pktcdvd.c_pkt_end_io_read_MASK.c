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
struct pktcdvd_device {int /*<<< orphan*/  wqueue; } ;
struct packet_data {int /*<<< orphan*/  run_sm; int /*<<< orphan*/  io_wait; int /*<<< orphan*/  io_errors; scalar_t__ sector; struct pktcdvd_device* pd; } ;
struct bio {scalar_t__ bi_sector; struct packet_data* bi_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct bio*,unsigned long long,unsigned long long,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct pktcdvd_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct bio *bio, int err)
{
	struct packet_data *pkt = bio->bi_private;
	struct pktcdvd_device *pd = pkt->pd;
	FUNC0(!pd);

	FUNC1("pkt_end_io_read: bio=%p sec0=%llx sec=%llx err=%d\n", bio,
		(unsigned long long)pkt->sector, (unsigned long long)bio->bi_sector, err);

	if (err)
		FUNC3(&pkt->io_errors);
	if (FUNC2(&pkt->io_wait)) {
		FUNC3(&pkt->run_sm);
		FUNC5(&pd->wqueue);
	}
	FUNC4(pd);
}