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
typedef  union e1000_adv_rx_desc {int dummy; } e1000_adv_rx_desc ;
struct skb_frag_struct {unsigned int page_offset; } ;
struct sk_buff {unsigned int data_len; unsigned int tail; int /*<<< orphan*/  len; } ;
struct igb_ring {int /*<<< orphan*/  q_vector; } ;
struct TYPE_2__ {struct skb_frag_struct* frags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int,int) ; 
 int /*<<< orphan*/  E1000_RXDADV_STAT_TSIP ; 
 int /*<<< orphan*/  IGB_RX_HDR_LEN ; 
 unsigned int IGB_TS_HDR_LEN ; 
 unsigned int FUNC1 (unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned char*,struct sk_buff*) ; 
 scalar_t__ FUNC3 (union e1000_adv_rx_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,unsigned char*,int /*<<< orphan*/ ) ; 
 unsigned char* FUNC5 (struct skb_frag_struct*) ; 
 int /*<<< orphan*/  FUNC6 (struct skb_frag_struct*,unsigned int) ; 
 TYPE_1__* FUNC7 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC8(struct igb_ring *rx_ring,
			  union e1000_adv_rx_desc *rx_desc,
			  struct sk_buff *skb)
{
	struct skb_frag_struct *frag = &FUNC7(skb)->frags[0];
	unsigned char *va;
	unsigned int pull_len;

	/* it is valid to use page_address instead of kmap since we are
	 * working with pages allocated out of the lomem pool per
	 * alloc_page(GFP_ATOMIC)
	 */
	va = FUNC5(frag);

	if (FUNC3(rx_desc, E1000_RXDADV_STAT_TSIP)) {
		/* retrieve timestamp from buffer */
		FUNC2(rx_ring->q_vector, va, skb);

		/* update pointers to remove timestamp header */
		FUNC6(frag, IGB_TS_HDR_LEN);
		frag->page_offset += IGB_TS_HDR_LEN;
		skb->data_len -= IGB_TS_HDR_LEN;
		skb->len -= IGB_TS_HDR_LEN;

		/* move va to start of packet data */
		va += IGB_TS_HDR_LEN;
	}

	/* we need the header to contain the greater of either ETH_HLEN or
	 * 60 bytes if the skb->len is less than 60 for skb_pad.
	 */
	pull_len = FUNC1(va, IGB_RX_HDR_LEN);

	/* align pull length to size of long to optimize memcpy performance */
	FUNC4(skb, va, FUNC0(pull_len, sizeof(long)));

	/* update all of the pointers */
	FUNC6(frag, pull_len);
	frag->page_offset += pull_len;
	skb->data_len -= pull_len;
	skb->tail += pull_len;
}