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
typedef  int u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct tcphdr {int ack; int syn; int fin; int rst; int doff; scalar_t__ urg_ptr; void* window; void* ack_seq; void* seq; void* dest; void* source; } ;
struct sk_buff {scalar_t__ mac_len; scalar_t__ data_len; void* protocol; int /*<<< orphan*/  ip_summed; int /*<<< orphan*/  data; } ;
struct TYPE_5__ {int loc_id; int rcv_wnd; scalar_t__ loc_seq_num; scalar_t__ loc_ack_num; scalar_t__ rcv_nxt; } ;
struct nes_cm_node {void* rem_mac; void* loc_mac; int loc_port; int rem_port; TYPE_2__ tcp_cntxt; scalar_t__ rem_addr; scalar_t__ loc_addr; TYPE_1__* netdev; } ;
struct iphdr {int ihl; int ttl; int protocol; void* daddr; void* saddr; void* frag_off; void* id; void* tot_len; scalar_t__ tos; int /*<<< orphan*/  version; } ;
struct ethhdr {int* h_dest; int* h_source; void* h_proto; } ;
struct TYPE_6__ {scalar_t__ nr_frags; } ;
struct TYPE_4__ {int features; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHECKSUM_NONE ; 
 int /*<<< orphan*/  CHECKSUM_PARTIAL ; 
 int ETH_ALEN ; 
 scalar_t__ ETH_HLEN ; 
 int /*<<< orphan*/  IPVERSION ; 
 int NETIF_F_IP_CSUM ; 
 int SET_ACK ; 
 int SET_FIN ; 
 int SET_RST ; 
 int SET_SYN ; 
 int /*<<< orphan*/  cm_packets_created ; 
 void* FUNC0 (scalar_t__) ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int*,void*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,scalar_t__) ; 
 int* FUNC4 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,scalar_t__) ; 
 TYPE_3__* FUNC8 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(struct sk_buff *skb,
			  struct nes_cm_node *cm_node, void *options, u32 optionsize,
			  void *data, u32 datasize, u8 flags)
{
	struct tcphdr *tcph;
	struct iphdr *iph;
	struct ethhdr *ethh;
	u8 *buf;
	u16 packetsize = sizeof(*iph);

	packetsize += sizeof(*tcph);
	packetsize += optionsize + datasize;

	FUNC9(skb, 0);
	FUNC3(skb->data, 0x00, ETH_HLEN + sizeof(*iph) + sizeof(*tcph));

	buf = FUNC4(skb, packetsize + ETH_HLEN);

	ethh = (struct ethhdr *)buf;
	buf += ETH_HLEN;

	iph = (struct iphdr *)buf;
	buf += sizeof(*iph);
	tcph = (struct tcphdr *)buf;
	FUNC5(skb);
	FUNC6(skb, ETH_HLEN);
	FUNC7(skb, ETH_HLEN + sizeof(*iph));
	buf += sizeof(*tcph);

	skb->ip_summed = CHECKSUM_PARTIAL;
	if (!(cm_node->netdev->features & NETIF_F_IP_CSUM))
		skb->ip_summed = CHECKSUM_NONE;
	skb->protocol = FUNC1(0x800);
	skb->data_len = 0;
	skb->mac_len = ETH_HLEN;

	FUNC2(ethh->h_dest, cm_node->rem_mac, ETH_ALEN);
	FUNC2(ethh->h_source, cm_node->loc_mac, ETH_ALEN);
	ethh->h_proto = FUNC1(0x0800);

	iph->version = IPVERSION;
	iph->ihl = 5;           /* 5 * 4Byte words, IP headr len */
	iph->tos = 0;
	iph->tot_len = FUNC1(packetsize);
	iph->id = FUNC1(++cm_node->tcp_cntxt.loc_id);

	iph->frag_off = FUNC1(0x4000);
	iph->ttl = 0x40;
	iph->protocol = 0x06;   /* IPPROTO_TCP */

	iph->saddr = FUNC0(cm_node->loc_addr);
	iph->daddr = FUNC0(cm_node->rem_addr);

	tcph->source = FUNC1(cm_node->loc_port);
	tcph->dest = FUNC1(cm_node->rem_port);
	tcph->seq = FUNC0(cm_node->tcp_cntxt.loc_seq_num);

	if (flags & SET_ACK) {
		cm_node->tcp_cntxt.loc_ack_num = cm_node->tcp_cntxt.rcv_nxt;
		tcph->ack_seq = FUNC0(cm_node->tcp_cntxt.loc_ack_num);
		tcph->ack = 1;
	} else {
		tcph->ack_seq = 0;
	}

	if (flags & SET_SYN) {
		cm_node->tcp_cntxt.loc_seq_num++;
		tcph->syn = 1;
	} else {
		cm_node->tcp_cntxt.loc_seq_num += datasize;
	}

	if (flags & SET_FIN) {
		cm_node->tcp_cntxt.loc_seq_num++;
		tcph->fin = 1;
	}

	if (flags & SET_RST)
		tcph->rst = 1;

	tcph->doff = (u16)((sizeof(*tcph) + optionsize + 3) >> 2);
	tcph->window = FUNC1(cm_node->tcp_cntxt.rcv_wnd);
	tcph->urg_ptr = 0;
	if (optionsize)
		FUNC2(buf, options, optionsize);
	buf += optionsize;
	if (datasize)
		FUNC2(buf, data, datasize);

	FUNC8(skb)->nr_frags = 0;
	cm_packets_created++;
}