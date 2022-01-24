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
typedef  size_t u32 ;
struct tg3_tx_ring_info {int fragmented; struct sk_buff* skb; } ;
struct tg3_napi {struct tg3_tx_ring_info* tx_buffers; TYPE_1__* tp; } ;
struct sk_buff {int dummy; } ;
typedef  int /*<<< orphan*/  skb_frag_t ;
struct TYPE_4__ {int /*<<< orphan*/ * frags; } ;
struct TYPE_3__ {int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 size_t FUNC0 (size_t) ; 
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 int /*<<< orphan*/  FUNC1 (struct tg3_tx_ring_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mapping ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 TYPE_2__* FUNC6 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC7(struct tg3_napi *tnapi, u32 entry, int last)
{
	int i;
	struct sk_buff *skb;
	struct tg3_tx_ring_info *txb = &tnapi->tx_buffers[entry];

	skb = txb->skb;
	txb->skb = NULL;

	FUNC3(tnapi->tp->pdev,
			 FUNC1(txb, mapping),
			 FUNC5(skb),
			 PCI_DMA_TODEVICE);

	while (txb->fragmented) {
		txb->fragmented = false;
		entry = FUNC0(entry);
		txb = &tnapi->tx_buffers[entry];
	}

	for (i = 0; i <= last; i++) {
		const skb_frag_t *frag = &FUNC6(skb)->frags[i];

		entry = FUNC0(entry);
		txb = &tnapi->tx_buffers[entry];

		FUNC2(tnapi->tp->pdev,
			       FUNC1(txb, mapping),
			       FUNC4(frag), PCI_DMA_TODEVICE);

		while (txb->fragmented) {
			txb->fragmented = false;
			entry = FUNC0(entry);
			txb = &tnapi->tx_buffers[entry];
		}
	}
}