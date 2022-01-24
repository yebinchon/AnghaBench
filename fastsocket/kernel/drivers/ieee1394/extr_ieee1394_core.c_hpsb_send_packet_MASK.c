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
typedef  int /*<<< orphan*/  u8 ;
struct hpsb_packet {scalar_t__ generation; scalar_t__ node_id; size_t data_size; size_t header_size; scalar_t__ type; int speed_code; int /*<<< orphan*/  header; scalar_t__ expect_response; int /*<<< orphan*/  data; int /*<<< orphan*/  queue; scalar_t__ sendtime; int /*<<< orphan*/  refcnt; scalar_t__ no_waiter; int /*<<< orphan*/  state; struct hpsb_host* host; } ;
struct hpsb_host {scalar_t__ node_id; int* speed; TYPE_1__* driver; int /*<<< orphan*/  pending_packets; scalar_t__ in_bus_reset; scalar_t__ is_shutdown; } ;
typedef  int /*<<< orphan*/  quadlet_t ;
struct TYPE_2__ {int (* transmit_packet ) (struct hpsb_host*,struct hpsb_packet*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  ACK_COMPLETE ; 
 int /*<<< orphan*/  ACK_PENDING ; 
 size_t ALL_NODES ; 
 int EAGAIN ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int HZ ; 
 size_t FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC5 (struct hpsb_host*) ; 
 scalar_t__ hpsb_async ; 
 int /*<<< orphan*/  FUNC6 (struct hpsb_host*,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct hpsb_host*,struct hpsb_packet*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hpsb_queued ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  pending_packets_lock ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC14 (struct hpsb_host*,struct hpsb_packet*) ; 

int FUNC15(struct hpsb_packet *packet)
{
	struct hpsb_host *host = packet->host;

	if (host->is_shutdown)
		return -EINVAL;
	if (host->in_bus_reset ||
	    (packet->generation != FUNC5(host)))
		return -EAGAIN;

	packet->state = hpsb_queued;

	/* This just seems silly to me */
	FUNC2(packet->no_waiter && packet->expect_response);

	if (!packet->no_waiter || packet->expect_response) {
		unsigned long flags;

		FUNC3(&packet->refcnt);
		/* Set the initial "sendtime" to 10 seconds from now, to
		   prevent premature expiry.  If a packet takes more than
		   10 seconds to hit the wire, we have bigger problems :) */
		packet->sendtime = jiffies + 10 * HZ;
		FUNC12(&pending_packets_lock, flags);
		FUNC10(&packet->queue, &host->pending_packets);
		FUNC13(&pending_packets_lock, flags);
	}

	if (packet->node_id == host->node_id) {
		/* it is a local request, so handle it locally */

		quadlet_t *data;
		size_t size = packet->data_size + packet->header_size;

		data = FUNC9(size, GFP_ATOMIC);
		if (!data) {
			FUNC0("unable to allocate memory for concatenating header and data");
			return -ENOMEM;
		}

		FUNC11(data, packet->header, packet->header_size);

		if (packet->data_size)
			FUNC11(((u8*)data) + packet->header_size, packet->data, packet->data_size);

		FUNC4("send packet local", packet->header, packet->header_size, -1);

		FUNC7(host, packet, packet->expect_response ? ACK_PENDING : ACK_COMPLETE);
		FUNC6(host, data, size, 0);

		FUNC8(data);

		return 0;
	}

	if (packet->type == hpsb_async &&
	    FUNC1(packet->node_id) != ALL_NODES)
		packet->speed_code =
			host->speed[FUNC1(packet->node_id)];

	FUNC4("send packet", packet->header, packet->header_size, packet->speed_code);

	return host->driver->transmit_packet(host, packet);
}