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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct skb_frag_struct {int dummy; } ;
struct sk_buff {scalar_t__ len; scalar_t__ data_len; int /*<<< orphan*/  data; } ;
struct device {int dummy; } ;
struct be_queue_info {int /*<<< orphan*/  head; } ;
struct be_eth_wrb {scalar_t__ frag_len; } ;
struct be_eth_hdr_wrb {scalar_t__ frag_len; } ;
struct be_adapter {TYPE_1__* pdev; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_4__ {int nr_frags; struct skb_frag_struct* frags; } ;
struct TYPE_3__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (struct be_eth_wrb*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct be_queue_info*) ; 
 struct be_eth_wrb* FUNC4 (struct be_queue_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,struct skb_frag_struct const*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct skb_frag_struct const*) ; 
 int FUNC7 (struct sk_buff*) ; 
 TYPE_2__* FUNC8 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (struct device*,struct be_eth_wrb*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct be_eth_wrb*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct be_adapter*,struct be_eth_wrb*,struct sk_buff*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC12(struct be_adapter *adapter, struct be_queue_info *txq,
		struct sk_buff *skb, u32 wrb_cnt, bool dummy_wrb,
		bool skip_hw_vlan)
{
	dma_addr_t busaddr;
	int i, copied = 0;
	struct device *dev = &adapter->pdev->dev;
	struct sk_buff *first_skb = skb;
	struct be_eth_wrb *wrb;
	struct be_eth_hdr_wrb *hdr;
	bool map_single = false;
	u16 map_head;

	hdr = FUNC4(txq);
	FUNC3(txq);
	map_head = txq->head;

	if (skb->len > skb->data_len) {
		int len = FUNC7(skb);
		busaddr = FUNC1(dev, skb->data, len, DMA_TO_DEVICE);
		if (FUNC2(dev, busaddr))
			goto dma_err;
		map_single = true;
		wrb = FUNC4(txq);
		FUNC10(wrb, busaddr, len);
		FUNC0(wrb, sizeof(*wrb));
		FUNC3(txq);
		copied += len;
	}

	for (i = 0; i < FUNC8(skb)->nr_frags; i++) {
		const struct skb_frag_struct *frag =
			&FUNC8(skb)->frags[i];
		busaddr = FUNC5(dev, frag, 0,
					   FUNC6(frag), DMA_TO_DEVICE);
		if (FUNC2(dev, busaddr))
			goto dma_err;
		wrb = FUNC4(txq);
		FUNC10(wrb, busaddr, FUNC6(frag));
		FUNC0(wrb, sizeof(*wrb));
		FUNC3(txq);
		copied += FUNC6(frag);
	}

	if (dummy_wrb) {
		wrb = FUNC4(txq);
		FUNC10(wrb, 0, 0);
		FUNC0(wrb, sizeof(*wrb));
		FUNC3(txq);
	}

	FUNC11(adapter, hdr, first_skb, wrb_cnt, copied, skip_hw_vlan);
	FUNC0(hdr, sizeof(*hdr));

	return copied;
dma_err:
	txq->head = map_head;
	while (copied) {
		wrb = FUNC4(txq);
		FUNC9(dev, wrb, map_single);
		map_single = false;
		copied -= wrb->frag_len;
		FUNC3(txq);
	}
	return 0;
}