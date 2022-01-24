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
struct sky2_port {unsigned int rx_data_size; TYPE_1__* hw; } ;
struct sk_buff {int /*<<< orphan*/  data; } ;
struct rx_ring_info {struct sk_buff* skb; } ;
struct TYPE_4__ {scalar_t__ nr_frags; } ;
struct TYPE_3__ {int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,unsigned int,unsigned int) ; 
 TYPE_2__* FUNC4 (struct sk_buff*) ; 
 struct sk_buff* FUNC5 (struct sky2_port*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,struct rx_ring_info*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct rx_ring_info*) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static struct sk_buff *FUNC9(struct sky2_port *sky2,
				   struct rx_ring_info *re,
				   unsigned int length)
{
	struct sk_buff *skb, *nskb;
	unsigned hdr_space = sky2->rx_data_size;

	/* Don't be tricky about reusing pages (yet) */
	nskb = FUNC5(sky2);
	if (FUNC8(!nskb))
		return NULL;

	skb = re->skb;
	FUNC7(sky2->hw->pdev, re);

	FUNC1(skb->data);
	re->skb = nskb;
	if (FUNC6(sky2->hw->pdev, re, hdr_space)) {
		FUNC0(nskb);
		re->skb = skb;
		return NULL;
	}

	if (FUNC4(skb)->nr_frags)
		FUNC3(skb, hdr_space, length);
	else
		FUNC2(skb, length);
	return skb;
}