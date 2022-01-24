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
struct sk_buff {int /*<<< orphan*/  vlan_tci; int /*<<< orphan*/  ip_summed; int /*<<< orphan*/  protocol; } ;
struct netvsc_device {struct net_device* ndev; } ;
struct TYPE_2__ {int /*<<< orphan*/  rx_bytes; int /*<<< orphan*/  rx_packets; int /*<<< orphan*/  rx_dropped; } ;
struct net_device {TYPE_1__ stats; } ;
struct hv_netvsc_packet {int /*<<< orphan*/  total_data_buflen; int /*<<< orphan*/  vlan_tci; int /*<<< orphan*/  data; void* status; } ;
struct hv_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHECKSUM_NONE ; 
 void* NVSP_STAT_FAIL ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,struct net_device*) ; 
 scalar_t__ FUNC1 (struct hv_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC3 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int) ; 

int FUNC8(struct hv_device *device_obj,
				struct hv_netvsc_packet *packet)
{
	struct net_device *net;
	struct sk_buff *skb;

	net = ((struct netvsc_device *)FUNC1(device_obj))->ndev;
	if (!net) {
		FUNC4(net, "got receive callback but net device"
			" not initialized yet\n");
		packet->status = NVSP_STAT_FAIL;
		return 0;
	}

	/* Allocate a skb - TODO direct I/O to pages? */
	skb = FUNC3(net, packet->total_data_buflen);
	if (FUNC7(!skb)) {
		++net->stats.rx_dropped;
		packet->status = NVSP_STAT_FAIL;
		return 0;
	}

	/*
	 * Copy to skb. This copy is needed here since the memory pointed by
	 * hv_netvsc_packet cannot be deallocated
	 */
	FUNC2(FUNC6(skb, packet->total_data_buflen), packet->data,
		packet->total_data_buflen);

	skb->protocol = FUNC0(skb, net);
	skb->ip_summed = CHECKSUM_NONE;
	skb->vlan_tci = packet->vlan_tci;

	net->stats.rx_packets++;
	net->stats.rx_bytes += packet->total_data_buflen;

	/*
	 * Pass the skb back up. Network stack will deallocate the skb when it
	 * is done.
	 * TODO - use NAPI?
	 */
	FUNC5(skb);

	return 0;
}