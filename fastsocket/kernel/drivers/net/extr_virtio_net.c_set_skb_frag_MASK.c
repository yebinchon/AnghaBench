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
struct sk_buff {int /*<<< orphan*/  truesize; int /*<<< orphan*/  len; int /*<<< orphan*/  data_len; } ;
struct page {int dummy; } ;
struct TYPE_4__ {unsigned int page_offset; scalar_t__ size; struct page* page; } ;
typedef  TYPE_1__ skb_frag_t ;
struct TYPE_6__ {int nr_frags; TYPE_1__* frags; } ;
struct TYPE_5__ {int shared_frag; } ;

/* Variables and functions */
 scalar_t__ PAGE_SIZE ; 
 scalar_t__ FUNC0 (unsigned int,unsigned int) ; 
 TYPE_3__* FUNC1 (struct sk_buff*) ; 
 TYPE_2__* FUNC2 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC3(struct sk_buff *skb, struct page *page,
			 unsigned int offset, unsigned int *len)
{
	int i = FUNC1(skb)->nr_frags;
	skb_frag_t *f;

	f = &FUNC1(skb)->frags[i];
	f->size = FUNC0((unsigned)PAGE_SIZE - offset, *len);
	f->page_offset = offset;
	f->page = page;

	skb->data_len += f->size;
	skb->len += f->size;
	skb->truesize += PAGE_SIZE;
	FUNC1(skb)->nr_frags++;
	FUNC2(skb)->shared_frag = 1;
	*len -= f->size;
}