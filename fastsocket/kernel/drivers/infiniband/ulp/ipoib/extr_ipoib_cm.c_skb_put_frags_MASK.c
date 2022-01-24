#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {unsigned int tail; unsigned int len; unsigned int data_len; unsigned int truesize; } ;
struct TYPE_4__ {unsigned int size; } ;
typedef  TYPE_1__ skb_frag_t ;
struct TYPE_5__ {int nr_frags; TYPE_1__* frags; } ;

/* Variables and functions */
 scalar_t__ PAGE_SIZE ; 
 unsigned int FUNC0 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_2__* FUNC3 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC4(struct sk_buff *skb, unsigned int hdr_space,
			  unsigned int length, struct sk_buff *toskb)
{
	int i, num_frags;
	unsigned int size;

	/* put header into skb */
	size = FUNC0(length, hdr_space);
	skb->tail += size;
	skb->len += size;
	length -= size;

	num_frags = FUNC3(skb)->nr_frags;
	for (i = 0; i < num_frags; i++) {
		skb_frag_t *frag = &FUNC3(skb)->frags[i];

		if (length == 0) {
			/* don't need this page */
			FUNC1(toskb, i, FUNC2(frag),
					   0, PAGE_SIZE);
			--FUNC3(skb)->nr_frags;
		} else {
			size = FUNC0(length, (unsigned) PAGE_SIZE);

			frag->size = size;
			skb->data_len += size;
			skb->truesize += size;
			skb->len += size;
			length -= size;
		}
	}
}