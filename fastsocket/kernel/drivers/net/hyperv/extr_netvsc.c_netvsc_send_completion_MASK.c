#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct vmpacket_descriptor {int offset8; scalar_t__ trans_id; } ;
struct TYPE_8__ {scalar_t__ msg_type; } ;
struct nvsp_message {TYPE_4__ hdr; } ;
struct netvsc_device {int /*<<< orphan*/  start_remove; int /*<<< orphan*/  wait_drain; scalar_t__ destroy; int /*<<< orphan*/  num_outstanding_sends; int /*<<< orphan*/  channel_init_wait; int /*<<< orphan*/  channel_init_pkt; struct net_device* ndev; } ;
struct net_device {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  send_completion_ctx; int /*<<< orphan*/  (* send_completion ) (int /*<<< orphan*/ ) ;} ;
struct TYPE_6__ {TYPE_1__ send; } ;
struct hv_netvsc_packet {TYPE_2__ completion; } ;
struct hv_device {TYPE_3__* channel; } ;
struct TYPE_7__ {int /*<<< orphan*/  outbound; } ;

/* Variables and functions */
 scalar_t__ NVSP_MSG1_TYPE_SEND_RECV_BUF_COMPLETE ; 
 scalar_t__ NVSP_MSG1_TYPE_SEND_RNDIS_PKT_COMPLETE ; 
 scalar_t__ NVSP_MSG1_TYPE_SEND_SEND_BUF_COMPLETE ; 
 scalar_t__ NVSP_MSG_TYPE_INIT_COMPLETE ; 
 scalar_t__ RING_AVAIL_PERCENT_HIWATER ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct netvsc_device* FUNC2 (struct hv_device*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct nvsp_message*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,char*,scalar_t__) ; 
 scalar_t__ FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(struct hv_device *device,
				   struct vmpacket_descriptor *packet)
{
	struct netvsc_device *net_device;
	struct nvsp_message *nvsp_packet;
	struct hv_netvsc_packet *nvsc_packet;
	struct net_device *ndev;

	net_device = FUNC2(device);
	if (!net_device)
		return;
	ndev = net_device->ndev;

	nvsp_packet = (struct nvsp_message *)((unsigned long)packet +
			(packet->offset8 << 3));

	if ((nvsp_packet->hdr.msg_type == NVSP_MSG_TYPE_INIT_COMPLETE) ||
	    (nvsp_packet->hdr.msg_type ==
	     NVSP_MSG1_TYPE_SEND_RECV_BUF_COMPLETE) ||
	    (nvsp_packet->hdr.msg_type ==
	     NVSP_MSG1_TYPE_SEND_SEND_BUF_COMPLETE)) {
		/* Copy the response back */
		FUNC4(&net_device->channel_init_pkt, nvsp_packet,
		       sizeof(struct nvsp_message));
		FUNC1(&net_device->channel_init_wait);
	} else if (nvsp_packet->hdr.msg_type ==
		   NVSP_MSG1_TYPE_SEND_RNDIS_PKT_COMPLETE) {
		int num_outstanding_sends;

		/* Get the send context */
		nvsc_packet = (struct hv_netvsc_packet *)(unsigned long)
			packet->trans_id;

		/* Notify the layer above us */
		if (nvsc_packet)
			nvsc_packet->completion.send.send_completion(
				nvsc_packet->completion.send.
				send_completion_ctx);

		num_outstanding_sends =
			FUNC0(&net_device->num_outstanding_sends);

		if (net_device->destroy && num_outstanding_sends == 0)
			FUNC9(&net_device->wait_drain);

		if (FUNC6(ndev) && !net_device->start_remove &&
			(FUNC3(&device->channel->outbound)
			> RING_AVAIL_PERCENT_HIWATER ||
			num_outstanding_sends < 1))
				FUNC7(ndev);
	} else {
		FUNC5(ndev, "Unknown send completion packet type- "
			   "%d received!!\n", nvsp_packet->hdr.msg_type);
	}

}