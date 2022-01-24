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
struct skb_frag_struct {unsigned int page_offset; } ;
struct sk_buff {unsigned int data_len; unsigned int tail; } ;
struct ixgbe_ring {int dummy; } ;
struct TYPE_2__ {struct skb_frag_struct* frags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int,int) ; 
 int /*<<< orphan*/  IXGBE_RX_HDR_SIZE ; 
 unsigned int FUNC1 (unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,unsigned char*,int /*<<< orphan*/ ) ; 
 unsigned char* FUNC3 (struct skb_frag_struct*) ; 
 int /*<<< orphan*/  FUNC4 (struct skb_frag_struct*,unsigned int) ; 
 TYPE_1__* FUNC5 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC6(struct ixgbe_ring *rx_ring,
			    struct sk_buff *skb)
{
	struct skb_frag_struct *frag = &FUNC5(skb)->frags[0];
	unsigned char *va;
	unsigned int pull_len;

	/*
	 * it is valid to use page_address instead of kmap since we are
	 * working with pages allocated out of the lomem pool per
	 * alloc_page(GFP_ATOMIC)
	 */
	va = FUNC3(frag);

	/*
	 * we need the header to contain the greater of either ETH_HLEN or
	 * 60 bytes if the skb->len is less than 60 for skb_pad.
	 */
	pull_len = FUNC1(va, IXGBE_RX_HDR_SIZE);

	/* align pull length to size of long to optimize memcpy performance */
	FUNC2(skb, va, FUNC0(pull_len, sizeof(long)));

	/* update all of the pointers */
	FUNC4(frag, pull_len);
	frag->page_offset += pull_len;
	skb->data_len -= pull_len;
	skb->tail += pull_len;
}