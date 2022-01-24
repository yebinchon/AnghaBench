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
struct sk_buff {int /*<<< orphan*/  data; } ;
struct jme_ring {struct jme_buffer_info* bufinf; } ;
struct jme_buffer_info {int /*<<< orphan*/  len; int /*<<< orphan*/  mapping; struct sk_buff* skb; } ;
struct jme_adapter {int /*<<< orphan*/  pdev; TYPE_1__* dev; struct jme_ring* rxring; } ;
struct TYPE_2__ {scalar_t__ mtu; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 scalar_t__ RX_EXTRA_LEN ; 
 struct sk_buff* FUNC0 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct jme_adapter *jme, int i)
{
	struct jme_ring *rxring = &(jme->rxring[0]);
	struct jme_buffer_info *rxbi = rxring->bufinf + i;
	struct sk_buff *skb;

	skb = FUNC0(jme->dev,
		jme->dev->mtu + RX_EXTRA_LEN);
	if (FUNC4(!skb))
		return -ENOMEM;

	rxbi->skb = skb;
	rxbi->len = FUNC3(skb);
	rxbi->mapping = FUNC2(jme->pdev,
					FUNC5(skb->data),
					FUNC1(skb->data),
					rxbi->len,
					PCI_DMA_FROMDEVICE);

	return 0;
}