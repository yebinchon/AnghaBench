#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct sk_buff_head {int dummy; } ;
struct sk_buff {scalar_t__ ip_summed; scalar_t__ len; int /*<<< orphan*/  protocol; int /*<<< orphan*/  data; } ;
struct page {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  rx_bytes; int /*<<< orphan*/  rx_packets; int /*<<< orphan*/  rx_errors; } ;
struct net_device {TYPE_2__ stats; } ;
struct TYPE_8__ {unsigned int offset; struct page* page; } ;
struct TYPE_7__ {TYPE_1__* frags; } ;
struct TYPE_5__ {struct page* page; } ;

/* Variables and functions */
 scalar_t__ CHECKSUM_PARTIAL ; 
 TYPE_4__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 struct sk_buff* FUNC2 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 void* FUNC7 (struct page*) ; 
 scalar_t__ FUNC8 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*) ; 
 TYPE_3__* FUNC10 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC11(struct net_device *dev,
				 struct sk_buff_head *rxq)
{
	int packets_dropped = 0;
	struct sk_buff *skb;

	while ((skb = FUNC2(rxq)) != NULL) {
		struct page *page = FUNC0(skb)->page;
		void *vaddr = FUNC7(page);
		unsigned offset = FUNC0(skb)->offset;

		FUNC5(skb->data, vaddr + offset,
		       FUNC9(skb));

		if (page != FUNC10(skb)->frags[0].page)
			FUNC1(page);

		/* Ethernet work: Delayed to here as it peeks the header. */
		skb->protocol = FUNC3(skb, dev);

		if (skb->ip_summed == CHECKSUM_PARTIAL) {
			if (FUNC8(skb)) {
				FUNC4(skb);
				packets_dropped++;
				dev->stats.rx_errors++;
				continue;
			}
		}

		dev->stats.rx_packets++;
		dev->stats.rx_bytes += skb->len;

		/* Pass it up. */
		FUNC6(skb);
	}

	return packets_dropped;
}