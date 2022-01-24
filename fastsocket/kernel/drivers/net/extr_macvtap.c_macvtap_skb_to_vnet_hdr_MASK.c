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
struct virtio_net_hdr {int /*<<< orphan*/  flags; int /*<<< orphan*/  csum_offset; scalar_t__ csum_start; int /*<<< orphan*/  gso_type; int /*<<< orphan*/  gso_size; int /*<<< orphan*/  hdr_len; } ;
struct skb_shared_info {int gso_type; int /*<<< orphan*/  gso_size; } ;
struct sk_buff {scalar_t__ ip_summed; int /*<<< orphan*/  csum_offset; scalar_t__ csum_start; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ CHECKSUM_PARTIAL ; 
 scalar_t__ CHECKSUM_UNNECESSARY ; 
 int SKB_GSO_TCPV4 ; 
 int SKB_GSO_TCPV6 ; 
 int SKB_GSO_TCP_ECN ; 
 int SKB_GSO_UDP ; 
 int /*<<< orphan*/  VIRTIO_NET_HDR_F_DATA_VALID ; 
 int /*<<< orphan*/  VIRTIO_NET_HDR_F_NEEDS_CSUM ; 
 int /*<<< orphan*/  VIRTIO_NET_HDR_GSO_ECN ; 
 int /*<<< orphan*/  VIRTIO_NET_HDR_GSO_NONE ; 
 int /*<<< orphan*/  VIRTIO_NET_HDR_GSO_TCPV4 ; 
 int /*<<< orphan*/  VIRTIO_NET_HDR_GSO_TCPV6 ; 
 int /*<<< orphan*/  VIRTIO_NET_HDR_GSO_UDP ; 
 int /*<<< orphan*/  FUNC1 (struct virtio_net_hdr*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff const*) ; 
 scalar_t__ FUNC3 (struct sk_buff const*) ; 
 scalar_t__ FUNC4 (struct sk_buff const*) ; 
 struct skb_shared_info* FUNC5 (struct sk_buff const*) ; 

__attribute__((used)) static int FUNC6(const struct sk_buff *skb,
				   struct virtio_net_hdr *vnet_hdr)
{
	FUNC1(vnet_hdr, 0, sizeof(*vnet_hdr));

	if (FUNC4(skb)) {
		struct skb_shared_info *sinfo = FUNC5(skb);

		/* This is a hint as to how much should be linear. */
		vnet_hdr->hdr_len = FUNC2(skb);
		vnet_hdr->gso_size = sinfo->gso_size;
		if (sinfo->gso_type & SKB_GSO_TCPV4)
			vnet_hdr->gso_type = VIRTIO_NET_HDR_GSO_TCPV4;
		else if (sinfo->gso_type & SKB_GSO_TCPV6)
			vnet_hdr->gso_type = VIRTIO_NET_HDR_GSO_TCPV6;
		else if (sinfo->gso_type & SKB_GSO_UDP)
			vnet_hdr->gso_type = VIRTIO_NET_HDR_GSO_UDP;
		else
			FUNC0();
		if (sinfo->gso_type & SKB_GSO_TCP_ECN)
			vnet_hdr->gso_type |= VIRTIO_NET_HDR_GSO_ECN;
	} else
		vnet_hdr->gso_type = VIRTIO_NET_HDR_GSO_NONE;

	if (skb->ip_summed == CHECKSUM_PARTIAL) {
		vnet_hdr->flags = VIRTIO_NET_HDR_F_NEEDS_CSUM;
		vnet_hdr->csum_start = skb->csum_start -
					FUNC3(skb);
		vnet_hdr->csum_offset = skb->csum_offset;
	} else if (skb->ip_summed == CHECKSUM_UNNECESSARY) {
		vnet_hdr->flags = VIRTIO_NET_HDR_F_DATA_VALID;
	} /* else everything is zero */

	return 0;
}