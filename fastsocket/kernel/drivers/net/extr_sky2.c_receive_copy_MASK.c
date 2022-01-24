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
struct sky2_port {TYPE_1__* hw; int /*<<< orphan*/  netdev; } ;
struct sk_buff {int /*<<< orphan*/  csum; int /*<<< orphan*/  ip_summed; int /*<<< orphan*/  data; } ;
struct rx_ring_info {TYPE_2__* skb; int /*<<< orphan*/  data_addr; } ;
struct TYPE_4__ {int /*<<< orphan*/  ip_summed; int /*<<< orphan*/  csum; } ;
struct TYPE_3__ {int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHECKSUM_NONE ; 
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 scalar_t__ FUNC0 (struct sk_buff*) ; 
 struct sk_buff* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int) ; 

__attribute__((used)) static struct sk_buff *FUNC7(struct sky2_port *sky2,
				    const struct rx_ring_info *re,
				    unsigned length)
{
	struct sk_buff *skb;

	skb = FUNC1(sky2->netdev, length + 2);
	if (FUNC0(skb)) {
		FUNC6(skb, 2);
		FUNC2(sky2->hw->pdev, re->data_addr,
					    length, PCI_DMA_FROMDEVICE);
		FUNC4(re->skb, skb->data, length);
		skb->ip_summed = re->skb->ip_summed;
		skb->csum = re->skb->csum;
		FUNC3(sky2->hw->pdev, re->data_addr,
					       length, PCI_DMA_FROMDEVICE);
		re->skb->ip_summed = CHECKSUM_NONE;
		FUNC5(skb, length);
	}
	return skb;
}