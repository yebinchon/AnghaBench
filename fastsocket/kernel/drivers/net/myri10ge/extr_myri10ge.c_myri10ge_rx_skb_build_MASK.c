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
struct skb_frag_struct {int size; int page_offset; } ;
struct sk_buff {int len; int data_len; int truesize; int tail; } ;
struct TYPE_2__ {struct skb_frag_struct* frags; int /*<<< orphan*/  nr_frags; } ;

/* Variables and functions */
 int /*<<< orphan*/  MXGEFW_PAD ; 
 int /*<<< orphan*/  FUNC0 (struct skb_frag_struct*,struct skb_frag_struct*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (struct sk_buff*) ; 

__attribute__((used)) static inline void
FUNC4(struct sk_buff *skb, u8 * va,
		      struct skb_frag_struct *rx_frags, int len, int hlen)
{
	struct skb_frag_struct *skb_frags;

	skb->len = skb->data_len = len;
	skb->truesize = len + sizeof(struct sk_buff);
	/* attach the page(s) */

	skb_frags = FUNC3(skb)->frags;
	while (len > 0) {
		FUNC0(skb_frags, rx_frags, sizeof(*skb_frags));
		len -= rx_frags->size;
		skb_frags++;
		rx_frags++;
		FUNC3(skb)->nr_frags++;
	}

	/* pskb_may_pull is not available in irq context, but
	 * skb_pull() (for ether_pad and eth_type_trans()) requires
	 * the beginning of the packet in skb_headlen(), move it
	 * manually */
	FUNC1(skb, va, hlen);
	FUNC3(skb)->frags[0].page_offset += hlen;
	FUNC3(skb)->frags[0].size -= hlen;
	skb->data_len -= hlen;
	skb->tail += hlen;
	FUNC2(skb, MXGEFW_PAD);
}