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
struct sk_buff {int /*<<< orphan*/  len; scalar_t__ data; } ;
struct qeth_card {int dummy; } ;
struct TYPE_2__ {int nr_frags; } ;

/* Variables and functions */
 int PAGE_SHIFT ; 
 unsigned long PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct qeth_card*) ; 
 TYPE_1__* FUNC2 (struct sk_buff*) ; 

int FUNC3(struct qeth_card *card, void *hdr,
		     struct sk_buff *skb, int elems)
{
	int elements_needed = 0;

	if (FUNC2(skb)->nr_frags > 0)
		elements_needed = (FUNC2(skb)->nr_frags + 1);
	if (elements_needed == 0)
		elements_needed = 1 + (((((unsigned long) skb->data) %
				PAGE_SIZE) + skb->len) >> PAGE_SHIFT);
	if ((elements_needed + elems) > FUNC1(card)) {
		FUNC0(2, "Invalid size of IP packet "
			"(Number=%d / Length=%d). Discarded.\n",
			(elements_needed+elems), skb->len);
		return 0;
	}
	return elements_needed;
}