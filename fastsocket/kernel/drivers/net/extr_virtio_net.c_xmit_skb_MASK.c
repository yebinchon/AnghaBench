#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct virtnet_info {int /*<<< orphan*/  svq; scalar_t__ mergeable_rx_bufs; TYPE_1__* dev; } ;
struct TYPE_6__ {scalar_t__ num_buffers; scalar_t__ hdr_len; scalar_t__ gso_size; int /*<<< orphan*/  gso_type; scalar_t__ csum_start; scalar_t__ csum_offset; scalar_t__ flags; } ;
struct skb_vnet_hdr {scalar_t__ num_sg; TYPE_3__ hdr; TYPE_3__ mhdr; } ;
struct sk_buff {scalar_t__ ip_summed; int /*<<< orphan*/  len; scalar_t__ csum_offset; scalar_t__ csum_start; scalar_t__ data; } ;
struct scatterlist {int dummy; } ;
struct ethhdr {unsigned char* h_dest; } ;
struct TYPE_5__ {int gso_type; scalar_t__ gso_size; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ CHECKSUM_PARTIAL ; 
 int MAX_SKB_FRAGS ; 
 int SKB_GSO_TCPV4 ; 
 int SKB_GSO_TCPV6 ; 
 int SKB_GSO_TCP_ECN ; 
 int SKB_GSO_UDP ; 
 scalar_t__ VIRTIO_NET_HDR_F_NEEDS_CSUM ; 
 int /*<<< orphan*/  VIRTIO_NET_HDR_GSO_ECN ; 
 int /*<<< orphan*/  VIRTIO_NET_HDR_GSO_NONE ; 
 int /*<<< orphan*/  VIRTIO_NET_HDR_GSO_TCPV4 ; 
 int /*<<< orphan*/  VIRTIO_NET_HDR_GSO_TCPV6 ; 
 int /*<<< orphan*/  VIRTIO_NET_HDR_GSO_UDP ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,struct sk_buff*,unsigned char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct scatterlist*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct scatterlist*,TYPE_3__*,int) ; 
 scalar_t__ FUNC4 (struct sk_buff*) ; 
 scalar_t__ FUNC5 (struct sk_buff*) ; 
 scalar_t__ FUNC6 (struct sk_buff*) ; 
 TYPE_2__* FUNC7 (struct sk_buff*) ; 
 scalar_t__ FUNC8 (struct sk_buff*,struct scatterlist*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct skb_vnet_hdr* FUNC9 (struct sk_buff*) ; 
 int FUNC10 (int /*<<< orphan*/ ,struct scatterlist*,scalar_t__,int /*<<< orphan*/ ,struct sk_buff*) ; 

__attribute__((used)) static int FUNC11(struct virtnet_info *vi, struct sk_buff *skb)
{
	struct scatterlist sg[2+MAX_SKB_FRAGS];
	struct skb_vnet_hdr *hdr = FUNC9(skb);
	const unsigned char *dest = ((struct ethhdr *)skb->data)->h_dest;

	FUNC2(sg, 2+MAX_SKB_FRAGS);

	FUNC1("%s: xmit %p %pM\n", vi->dev->name, skb, dest);

	if (skb->ip_summed == CHECKSUM_PARTIAL) {
		hdr->hdr.flags = VIRTIO_NET_HDR_F_NEEDS_CSUM;
		hdr->hdr.csum_start = skb->csum_start - FUNC5(skb);
		hdr->hdr.csum_offset = skb->csum_offset;
	} else {
		hdr->hdr.flags = 0;
		hdr->hdr.csum_offset = hdr->hdr.csum_start = 0;
	}

	if (FUNC6(skb)) {
		hdr->hdr.hdr_len = FUNC4(skb);
		hdr->hdr.gso_size = FUNC7(skb)->gso_size;
		if (FUNC7(skb)->gso_type & SKB_GSO_TCPV4)
			hdr->hdr.gso_type = VIRTIO_NET_HDR_GSO_TCPV4;
		else if (FUNC7(skb)->gso_type & SKB_GSO_TCPV6)
			hdr->hdr.gso_type = VIRTIO_NET_HDR_GSO_TCPV6;
		else if (FUNC7(skb)->gso_type & SKB_GSO_UDP)
			hdr->hdr.gso_type = VIRTIO_NET_HDR_GSO_UDP;
		else
			FUNC0();
		if (FUNC7(skb)->gso_type & SKB_GSO_TCP_ECN)
			hdr->hdr.gso_type |= VIRTIO_NET_HDR_GSO_ECN;
	} else {
		hdr->hdr.gso_type = VIRTIO_NET_HDR_GSO_NONE;
		hdr->hdr.gso_size = hdr->hdr.hdr_len = 0;
	}

	hdr->mhdr.num_buffers = 0;

	/* Encode metadata header at front. */
	if (vi->mergeable_rx_bufs)
		FUNC3(sg, &hdr->mhdr, sizeof hdr->mhdr);
	else
		FUNC3(sg, &hdr->hdr, sizeof hdr->hdr);

	hdr->num_sg = FUNC8(skb, sg+1, 0, skb->len) + 1;
	return FUNC10(vi->svq, sg, hdr->num_sg, 0, skb);
}