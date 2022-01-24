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
struct virtnet_info {int /*<<< orphan*/  num; int /*<<< orphan*/  rvq; } ;
struct TYPE_5__ {int num_buffers; } ;
struct skb_vnet_hdr {TYPE_1__ mhdr; } ;
struct sk_buff {TYPE_3__* dev; } ;
struct page {int dummy; } ;
struct TYPE_8__ {int nr_frags; } ;
struct TYPE_6__ {int /*<<< orphan*/  rx_length_errors; } ;
struct TYPE_7__ {TYPE_2__ stats; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EINVAL ; 
 int MAX_SKB_FRAGS ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct page*,int /*<<< orphan*/ ,int*) ; 
 TYPE_4__* FUNC2 (struct sk_buff*) ; 
 struct skb_vnet_hdr* FUNC3 (struct sk_buff*) ; 
 struct page* FUNC4 (int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int FUNC5(struct virtnet_info *vi, struct sk_buff *skb)
{
	struct skb_vnet_hdr *hdr = FUNC3(skb);
	struct page *page;
	int num_buf, i, len;

	num_buf = hdr->mhdr.num_buffers;
	while (--num_buf) {
		i = FUNC2(skb)->nr_frags;
		if (i >= MAX_SKB_FRAGS) {
			FUNC0("%s: packet too long\n", skb->dev->name);
			skb->dev->stats.rx_length_errors++;
			return -EINVAL;
		}

		page = FUNC4(vi->rvq, &len);
		if (!page) {
			FUNC0("%s: rx error: %d buffers missing\n",
				 skb->dev->name, hdr->mhdr.num_buffers);
			skb->dev->stats.rx_length_errors++;
			return -EINVAL;
		}
		if (len > PAGE_SIZE)
			len = PAGE_SIZE;

		FUNC1(skb, page, 0, &len);

		--vi->num;
	}
	return 0;
}