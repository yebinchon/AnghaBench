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
struct hpsb_packet {int ack_code; scalar_t__ state; scalar_t__ sendtime; int /*<<< orphan*/  queue; int /*<<< orphan*/  expect_response; int /*<<< orphan*/  refcnt; scalar_t__ no_waiter; } ;
struct hpsb_host {scalar_t__ timeout_interval; int /*<<< orphan*/  timeout; } ;

/* Variables and functions */
 int ACK_PENDING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ hpsb_complete ; 
 int /*<<< orphan*/  FUNC1 (struct hpsb_packet*) ; 
 scalar_t__ hpsb_pending ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  pending_packets_lock ; 
 int /*<<< orphan*/  FUNC4 (struct hpsb_packet*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC7(struct hpsb_host *host, struct hpsb_packet *packet,
		      int ackcode)
{
	unsigned long flags;

	FUNC5(&pending_packets_lock, flags);

	packet->ack_code = ackcode;

	if (packet->no_waiter || packet->state == hpsb_complete) {
		/* if packet->no_waiter, must not have a tlabel allocated */
		FUNC6(&pending_packets_lock, flags);
		FUNC1(packet);
		return;
	}

	FUNC0(&packet->refcnt);	/* drop HC's reference */
	/* here the packet must be on the host->pending_packets queue */

	if (ackcode != ACK_PENDING || !packet->expect_response) {
		packet->state = hpsb_complete;
		FUNC2(&packet->queue);
		FUNC6(&pending_packets_lock, flags);
		FUNC4(packet);
		return;
	}

	packet->state = hpsb_pending;
	packet->sendtime = jiffies;

	FUNC6(&pending_packets_lock, flags);

	FUNC3(&host->timeout, jiffies + host->timeout_interval);
}