#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {scalar_t__ len; scalar_t__ data; int /*<<< orphan*/  vlan_tci; } ;
struct rndis_filter_packet {int dummy; } ;
struct net_device_context {int /*<<< orphan*/  device_ctx; } ;
struct TYPE_12__ {int /*<<< orphan*/  tx_dropped; int /*<<< orphan*/  tx_packets; int /*<<< orphan*/  tx_bytes; } ;
struct net_device {TYPE_4__ stats; } ;
struct hv_page_buffer {int dummy; } ;
struct TYPE_10__ {unsigned long send_completion_tid; struct hv_netvsc_packet* send_completion_ctx; int /*<<< orphan*/  send_completion; } ;
struct TYPE_11__ {TYPE_2__ send; } ;
struct hv_netvsc_packet {unsigned int page_buf_cnt; TYPE_3__ completion; TYPE_1__* page_buf; scalar_t__ total_data_buflen; void* extension; int /*<<< orphan*/  vlan_tci; } ;
struct TYPE_13__ {int page_offset; } ;
typedef  TYPE_5__ skb_frag_t ;
struct TYPE_14__ {unsigned int nr_frags; TYPE_5__* frags; } ;
struct TYPE_9__ {unsigned long pfn; unsigned long offset; unsigned long len; } ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ NDIS_VLAN_PPI_SIZE ; 
 int NETDEV_TX_BUSY ; 
 int NETDEV_TX_OK ; 
 unsigned long PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct hv_netvsc_packet*) ; 
 struct hv_netvsc_packet* FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,char*) ; 
 struct net_device_context* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  netvsc_xmit_completion ; 
 unsigned long FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,struct hv_netvsc_packet*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__ const*) ; 
 unsigned long FUNC9 (TYPE_5__ const*) ; 
 unsigned long FUNC10 (struct sk_buff*) ; 
 TYPE_6__* FUNC11 (struct sk_buff*) ; 
 unsigned long FUNC12 (scalar_t__) ; 

__attribute__((used)) static int FUNC13(struct sk_buff *skb, struct net_device *net)
{
	struct net_device_context *net_device_ctx = FUNC5(net);
	struct hv_netvsc_packet *packet;
	int ret;
	unsigned int i, num_pages, npg_data;

	/* Add multipages for skb->data and additional 2 for RNDIS */
	npg_data = (((unsigned long)skb->data + FUNC10(skb) - 1)
		>> PAGE_SHIFT) - ((unsigned long)skb->data >> PAGE_SHIFT) + 1;
	num_pages = FUNC11(skb)->nr_frags + npg_data + 2;

	/* Allocate a netvsc packet based on # of frags. */
	packet = FUNC3(sizeof(struct hv_netvsc_packet) +
			 (num_pages * sizeof(struct hv_page_buffer)) +
			 sizeof(struct rndis_filter_packet) +
			 NDIS_VLAN_PPI_SIZE, GFP_ATOMIC);
	if (!packet) {
		/* out of memory, drop packet */
		FUNC4(net, "unable to allocate hv_netvsc_packet\n");

		FUNC0(skb);
		net->stats.tx_dropped++;
		return NETDEV_TX_OK;
	}

	packet->vlan_tci = skb->vlan_tci;

	packet->extension = (void *)(unsigned long)packet +
				sizeof(struct hv_netvsc_packet) +
				    (num_pages * sizeof(struct hv_page_buffer));

	/* If the rndis msg goes beyond 1 page, we will add 1 later */
	packet->page_buf_cnt = num_pages - 1;

	/* Initialize it from the skb */
	packet->total_data_buflen = skb->len;

	/* Start filling in the page buffers starting after RNDIS buffer. */
	packet->page_buf[1].pfn = FUNC12(skb->data) >> PAGE_SHIFT;
	packet->page_buf[1].offset
		= (unsigned long)skb->data & (PAGE_SIZE - 1);
	if (npg_data == 1)
		packet->page_buf[1].len = FUNC10(skb);
	else
		packet->page_buf[1].len = PAGE_SIZE
			- packet->page_buf[1].offset;

	for (i = 2; i <= npg_data; i++) {
		packet->page_buf[i].pfn = FUNC12(skb->data
			+ PAGE_SIZE * (i-1)) >> PAGE_SHIFT;
		packet->page_buf[i].offset = 0;
		packet->page_buf[i].len = PAGE_SIZE;
	}
	if (npg_data > 1)
		packet->page_buf[npg_data].len = (((unsigned long)skb->data
			+ FUNC10(skb) - 1) & (PAGE_SIZE - 1)) + 1;

	/* Additional fragments are after SKB data */
	for (i = 0; i < FUNC11(skb)->nr_frags; i++) {
		const skb_frag_t *f = &FUNC11(skb)->frags[i];

		packet->page_buf[i+npg_data+1].pfn =
			FUNC6(FUNC8(f));
		packet->page_buf[i+npg_data+1].offset = f->page_offset;
		packet->page_buf[i+npg_data+1].len = FUNC9(f);
	}

	/* Set the completion routine */
	packet->completion.send.send_completion = netvsc_xmit_completion;
	packet->completion.send.send_completion_ctx = packet;
	packet->completion.send.send_completion_tid = (unsigned long)skb;

	ret = FUNC7(net_device_ctx->device_ctx,
				  packet);
	if (ret == 0) {
		net->stats.tx_bytes += skb->len;
		net->stats.tx_packets++;
	} else {
		FUNC2(packet);
		if (ret != -EAGAIN) {
			FUNC1(skb);
			net->stats.tx_dropped++;
		}
	}

	return (ret == -EAGAIN) ? NETDEV_TX_BUSY : NETDEV_TX_OK;
}