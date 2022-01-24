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
struct sk_buff {unsigned int tail; unsigned int len; unsigned int data_len; unsigned int truesize; } ;
struct TYPE_3__ {unsigned int size; int /*<<< orphan*/  page; } ;
typedef  TYPE_1__ skb_frag_t ;
struct TYPE_4__ {int nr_frags; TYPE_1__* frags; } ;

/* Variables and functions */
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (unsigned int,unsigned int) ; 
 TYPE_2__* FUNC2 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC3(struct sk_buff *skb, unsigned int hdr_space,
			  unsigned int length)
{
	int i, num_frags;
	unsigned int size;

	/* put header into skb */
	size = FUNC1(length, hdr_space);
	skb->tail += size;
	skb->len += size;
	length -= size;

	num_frags = FUNC2(skb)->nr_frags;
	for (i = 0; i < num_frags; i++) {
		skb_frag_t *frag = &FUNC2(skb)->frags[i];

		if (length == 0) {
			/* don't need this page */
			FUNC0(frag->page);
			--FUNC2(skb)->nr_frags;
		} else {
			size = FUNC1(length, (unsigned) PAGE_SIZE);

			frag->size = size;
			skb->data_len += size;
			skb->truesize += size;
			skb->len += size;
			length -= size;
		}
	}
}