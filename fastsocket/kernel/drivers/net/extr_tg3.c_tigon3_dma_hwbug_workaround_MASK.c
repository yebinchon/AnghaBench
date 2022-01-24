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
typedef  size_t u32 ;
struct tg3_napi {TYPE_1__* tx_buffers; struct tg3* tp; } ;
struct tg3 {int /*<<< orphan*/  pdev; } ;
struct sk_buff {int /*<<< orphan*/  len; scalar_t__ data; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_2__ {struct sk_buff* skb; } ;

/* Variables and functions */
 scalar_t__ ASIC_REV_5701 ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 size_t TXD_FLAG_END ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mapping ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC4 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC5 (struct sk_buff*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 scalar_t__ FUNC8 (struct tg3*) ; 
 scalar_t__ FUNC9 (struct tg3_napi*,size_t*,size_t*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC10 (struct tg3_napi*,size_t,int) ; 

__attribute__((used)) static int FUNC11(struct tg3_napi *tnapi,
				       struct sk_buff **pskb,
				       u32 *entry, u32 *budget,
				       u32 base_flags, u32 mss, u32 vlan)
{
	struct tg3 *tp = tnapi->tp;
	struct sk_buff *new_skb, *skb = *pskb;
	dma_addr_t new_addr = 0;
	int ret = 0;

	if (FUNC8(tp) != ASIC_REV_5701)
		new_skb = FUNC4(skb, GFP_ATOMIC);
	else {
		int more_headroom = 4 - ((unsigned long)skb->data & 3);

		new_skb = FUNC5(skb,
					  FUNC6(skb) + more_headroom,
					  FUNC7(skb), GFP_ATOMIC);
	}

	if (!new_skb) {
		ret = -1;
	} else {
		/* New SKB is guaranteed to be linear. */
		new_addr = FUNC3(tp->pdev, new_skb->data, new_skb->len,
					  PCI_DMA_TODEVICE);
		/* Make sure the mapping succeeded */
		if (FUNC2(tp->pdev, new_addr)) {
			FUNC0(new_skb);
			ret = -1;
		} else {
			u32 save_entry = *entry;

			base_flags |= TXD_FLAG_END;

			tnapi->tx_buffers[*entry].skb = new_skb;
			FUNC1(&tnapi->tx_buffers[*entry],
					   mapping, new_addr);

			if (FUNC9(tnapi, entry, budget, new_addr,
					    new_skb->len, base_flags,
					    mss, vlan)) {
				FUNC10(tnapi, save_entry, -1);
				FUNC0(new_skb);
				ret = -1;
			}
		}
	}

	FUNC0(skb);
	*pskb = new_skb;
	return ret;
}