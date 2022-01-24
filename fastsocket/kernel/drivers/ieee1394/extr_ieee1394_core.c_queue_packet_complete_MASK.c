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
struct hpsb_packet {int /*<<< orphan*/  queue; int /*<<< orphan*/ * complete_routine; scalar_t__ no_waiter; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hpsb_packet*) ; 
 int /*<<< orphan*/  hpsbpkt_queue ; 
 int /*<<< orphan*/  khpsbpkt_thread ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pending_packets_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct hpsb_packet *packet)
{
	unsigned long flags;

	if (packet->no_waiter) {
		FUNC0(packet);
		return;
	}
	if (packet->complete_routine != NULL) {
		FUNC2(&pending_packets_lock, flags);
		FUNC1(&packet->queue, &hpsbpkt_queue);
		FUNC3(&pending_packets_lock, flags);
		FUNC4(khpsbpkt_thread);
	}
	return;
}