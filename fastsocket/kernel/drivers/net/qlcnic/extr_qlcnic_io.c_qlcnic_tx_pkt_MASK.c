#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  size_t u32 ;
typedef  scalar_t__ u16 ;
struct vlan_ethhdr {void* h_vlan_TCI; void* h_vlan_proto; void* h_vlan_encapsulated_proto; } ;
struct sk_buff {int* data; scalar_t__ ip_summed; void* protocol; } ;
struct qlcnic_host_tx_ring {size_t producer; int /*<<< orphan*/  num_desc; TYPE_1__* cmd_buf_arr; struct cmd_desc_type0* desc_head; } ;
struct TYPE_7__ {int /*<<< orphan*/  lso_frames; } ;
struct qlcnic_adapter {scalar_t__ tx_pvid; int flags; TYPE_2__ stats; struct qlcnic_host_tx_ring* tx_ring; } ;
struct cmd_desc_type0 {int total_hdr_length; int tcp_hdr_offset; int ip_hdr_offset; int /*<<< orphan*/  mss; int /*<<< orphan*/  eth_addr; } ;
struct TYPE_10__ {int protocol; } ;
struct TYPE_9__ {int nexthdr; } ;
struct TYPE_8__ {int /*<<< orphan*/  gso_size; } ;
struct TYPE_6__ {int /*<<< orphan*/ * skb; } ;

/* Variables and functions */
 int BIT_0 ; 
 scalar_t__ CHECKSUM_PARTIAL ; 
 int EIO ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 scalar_t__ ETH_P_8021Q ; 
 scalar_t__ ETH_P_IP ; 
 scalar_t__ ETH_P_IPV6 ; 
 scalar_t__ FLAGS_VLAN_OOB ; 
 scalar_t__ FLAGS_VLAN_TAGGED ; 
 int IPPROTO_TCP ; 
 int IPPROTO_UDP ; 
 int QLCNIC_TAGGING_ENABLED ; 
 int TX_ETHER_PKT ; 
 int TX_TCPV6_PKT ; 
 int TX_TCP_LSO ; 
 int TX_TCP_LSO6 ; 
 int TX_TCP_PKT ; 
 int TX_UDPV6_PKT ; 
 int TX_UDP_PKT ; 
 int VLAN_HLEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (size_t,int /*<<< orphan*/ ) ; 
 void* FUNC2 (scalar_t__) ; 
 TYPE_5__* FUNC3 (struct sk_buff*) ; 
 TYPE_4__* FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ) ; 
 int FUNC6 (int,int) ; 
 scalar_t__ FUNC7 (void*) ; 
 int /*<<< orphan*/  FUNC8 (struct cmd_desc_type0*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC9 (struct cmd_desc_type0*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,struct vlan_ethhdr*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*,int,char*,int) ; 
 scalar_t__ FUNC12 (struct sk_buff*) ; 
 int FUNC13 (struct sk_buff*) ; 
 TYPE_3__* FUNC14 (struct sk_buff*) ; 
 int FUNC15 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int FUNC17 (struct sk_buff*) ; 
 scalar_t__ FUNC18 (scalar_t__) ; 
 scalar_t__ FUNC19 (struct sk_buff*) ; 
 scalar_t__ FUNC20 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC21(struct qlcnic_adapter *adapter,
			 struct cmd_desc_type0 *first_desc, struct sk_buff *skb)
{
	u8 l4proto, opcode = 0, hdr_len = 0;
	u16 flags = 0, vlan_tci = 0;
	int copied, offset, copy_len, size;
	struct cmd_desc_type0 *hwdesc;
	struct vlan_ethhdr *vh;
	struct qlcnic_host_tx_ring *tx_ring = adapter->tx_ring;
	u16 protocol = FUNC7(skb->protocol);
	u32 producer = tx_ring->producer;

	if (protocol == ETH_P_8021Q) {
		vh = (struct vlan_ethhdr *)skb->data;
		flags = FLAGS_VLAN_TAGGED;
		vlan_tci = FUNC7(vh->h_vlan_TCI);
		protocol = FUNC7(vh->h_vlan_encapsulated_proto);
	} else if (FUNC20(skb)) {
		flags = FLAGS_VLAN_OOB;
		vlan_tci = FUNC19(skb);
	}
	if (FUNC18(adapter->tx_pvid)) {
		if (vlan_tci && !(adapter->flags & QLCNIC_TAGGING_ENABLED))
			return -EIO;
		if (vlan_tci && (adapter->flags & QLCNIC_TAGGING_ENABLED))
			goto set_flags;

		flags = FLAGS_VLAN_OOB;
		vlan_tci = adapter->tx_pvid;
	}
set_flags:
	FUNC9(first_desc, vlan_tci);
	FUNC8(first_desc, flags, opcode);

	if (*(skb->data) & BIT_0) {
		flags |= BIT_0;
		FUNC5(&first_desc->eth_addr, skb->data, ETH_ALEN);
	}
	opcode = TX_ETHER_PKT;
	if (FUNC12(skb)) {
		hdr_len = FUNC15(skb) + FUNC17(skb);
		first_desc->mss = FUNC0(FUNC14(skb)->gso_size);
		first_desc->total_hdr_length = hdr_len;
		opcode = (protocol == ETH_P_IPV6) ? TX_TCP_LSO6 : TX_TCP_LSO;

		/* For LSO, we need to copy the MAC/IP/TCP headers into
		* the descriptor ring */
		copied = 0;
		offset = 2;

		if (flags & FLAGS_VLAN_OOB) {
			first_desc->total_hdr_length += VLAN_HLEN;
			first_desc->tcp_hdr_offset = VLAN_HLEN;
			first_desc->ip_hdr_offset = VLAN_HLEN;

			/* Only in case of TSO on vlan device */
			flags |= FLAGS_VLAN_TAGGED;

			/* Create a TSO vlan header template for firmware */
			hwdesc = &tx_ring->desc_head[producer];
			tx_ring->cmd_buf_arr[producer].skb = NULL;

			copy_len = FUNC6((int)sizeof(struct cmd_desc_type0) -
				       offset, hdr_len + VLAN_HLEN);

			vh = (struct vlan_ethhdr *)((char *) hwdesc + 2);
			FUNC10(skb, vh, 12);
			vh->h_vlan_proto = FUNC2(ETH_P_8021Q);
			vh->h_vlan_TCI = FUNC2(vlan_tci);

			FUNC11(skb, 12,
							 (char *)vh + 16,
							 copy_len - 16);
			copied = copy_len - VLAN_HLEN;
			offset = 0;
			producer = FUNC1(producer, tx_ring->num_desc);
		}

		while (copied < hdr_len) {
			size = (int)sizeof(struct cmd_desc_type0) - offset;
			copy_len = FUNC6(size, (hdr_len - copied));
			hwdesc = &tx_ring->desc_head[producer];
			tx_ring->cmd_buf_arr[producer].skb = NULL;
			FUNC11(skb, copied,
							 (char *)hwdesc +
							 offset, copy_len);
			copied += copy_len;
			offset = 0;
			producer = FUNC1(producer, tx_ring->num_desc);
		}

		tx_ring->producer = producer;
		FUNC16();
		adapter->stats.lso_frames++;

	} else if (skb->ip_summed == CHECKSUM_PARTIAL) {
		if (protocol == ETH_P_IP) {
			l4proto = FUNC3(skb)->protocol;

			if (l4proto == IPPROTO_TCP)
				opcode = TX_TCP_PKT;
			else if (l4proto == IPPROTO_UDP)
				opcode = TX_UDP_PKT;
		} else if (protocol == ETH_P_IPV6) {
			l4proto = FUNC4(skb)->nexthdr;

			if (l4proto == IPPROTO_TCP)
				opcode = TX_TCPV6_PKT;
			else if (l4proto == IPPROTO_UDP)
				opcode = TX_UDPV6_PKT;
		}
	}
	first_desc->tcp_hdr_offset += FUNC15(skb);
	first_desc->ip_hdr_offset += FUNC13(skb);
	FUNC8(first_desc, flags, opcode);

	return 0;
}