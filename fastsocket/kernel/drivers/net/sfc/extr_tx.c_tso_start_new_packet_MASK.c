#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct tso_state {int tcp_off; scalar_t__ out_len; scalar_t__ packet_space; unsigned int ip_base_len; void* protocol; int ip_off; unsigned int ipv4_id; int /*<<< orphan*/  seqnum; int /*<<< orphan*/  header_len; } ;
struct tcphdr {scalar_t__ psh; scalar_t__ fin; int /*<<< orphan*/  seq; } ;
struct sk_buff {int /*<<< orphan*/  data; } ;
struct ipv6hdr {void* payload_len; } ;
struct iphdr {void* id; void* tot_len; } ;
struct efx_tx_queue {size_t insert_count; size_t ptr_mask; int /*<<< orphan*/  tso_packets; struct efx_tx_buffer* buffer; } ;
struct efx_tx_buffer {int dummy; } ;
struct TYPE_4__ {scalar_t__ gso_size; } ;
struct TYPE_3__ {scalar_t__ psh; scalar_t__ fin; } ;

/* Variables and functions */
 int ENOMEM ; 
 unsigned int ETH_P_IP ; 
 int FUNC0 (struct efx_tx_queue*,struct efx_tx_buffer*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (struct efx_tx_queue*,struct efx_tx_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC5 (struct sk_buff const*) ; 
 TYPE_1__* FUNC6 (struct sk_buff const*) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(struct efx_tx_queue *tx_queue,
				const struct sk_buff *skb,
				struct tso_state *st)
{
	struct efx_tx_buffer *buffer =
		&tx_queue->buffer[tx_queue->insert_count & tx_queue->ptr_mask];
	struct tcphdr *tsoh_th;
	unsigned ip_length;
	u8 *header;
	int rc;

	/* Allocate and insert a DMA-mapped header buffer. */
	header = FUNC1(tx_queue, buffer, st->header_len);
	if (!header)
		return -ENOMEM;

	tsoh_th = (struct tcphdr *)(header + st->tcp_off);

	/* Copy and update the headers. */
	FUNC4(header, skb->data, st->header_len);

	tsoh_th->seq = FUNC2(st->seqnum);
	st->seqnum += FUNC5(skb)->gso_size;
	if (st->out_len > FUNC5(skb)->gso_size) {
		/* This packet will not finish the TSO burst. */
		st->packet_space = FUNC5(skb)->gso_size;
		tsoh_th->fin = 0;
		tsoh_th->psh = 0;
	} else {
		/* This packet will be the last in the TSO burst. */
		st->packet_space = st->out_len;
		tsoh_th->fin = FUNC6(skb)->fin;
		tsoh_th->psh = FUNC6(skb)->psh;
	}
	ip_length = st->ip_base_len + st->packet_space;

	if (st->protocol == FUNC3(ETH_P_IP)) {
		struct iphdr *tsoh_iph = (struct iphdr *)(header + st->ip_off);

		tsoh_iph->tot_len = FUNC3(ip_length);

		/* Linux leaves suitable gaps in the IP ID space for us to fill. */
		tsoh_iph->id = FUNC3(st->ipv4_id);
		st->ipv4_id++;
	} else {
		struct ipv6hdr *tsoh_iph =
			(struct ipv6hdr *)(header + st->ip_off);

		tsoh_iph->payload_len = FUNC3(ip_length);
	}

	rc = FUNC0(tx_queue, buffer, header);
	if (FUNC7(rc))
		return rc;

	++tx_queue->tso_packets;

	return 0;
}