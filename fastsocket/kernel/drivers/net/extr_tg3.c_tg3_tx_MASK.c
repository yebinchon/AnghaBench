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
typedef  int u64 ;
typedef  size_t u32 ;
struct tg3_tx_ring_info {int fragmented; struct sk_buff* skb; } ;
struct tg3_napi {size_t tx_cons; struct tg3_tx_ring_info* tx_buffers; TYPE_3__* tx_ring; TYPE_2__* hw_status; struct tg3* tp; } ;
struct tg3 {int /*<<< orphan*/  pdev; int /*<<< orphan*/  dev; struct tg3_napi* napi; } ;
struct skb_shared_hwtstamps {int dummy; } ;
struct sk_buff {int dummy; } ;
struct netdev_queue {int dummy; } ;
struct TYPE_8__ {int nr_frags; int /*<<< orphan*/ * frags; } ;
struct TYPE_7__ {int len_flags; } ;
struct TYPE_6__ {TYPE_1__* idx; } ;
struct TYPE_5__ {size_t tx_consumer; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENABLE_TSS ; 
 size_t FUNC0 (size_t) ; 
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 int /*<<< orphan*/  TG3_TX_TSTAMP_LSB ; 
 int /*<<< orphan*/  TG3_TX_TSTAMP_MSB ; 
 scalar_t__ FUNC1 (struct tg3_napi*) ; 
 int TXD_FLAG_HWTSTAMP ; 
 int /*<<< orphan*/  FUNC2 (struct netdev_queue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct netdev_queue*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct tg3_tx_ring_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mapping ; 
 struct netdev_queue* FUNC6 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (struct netdev_queue*) ; 
 int /*<<< orphan*/  FUNC8 (struct netdev_queue*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*) ; 
 TYPE_4__* FUNC13 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*,struct skb_shared_hwtstamps*) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 () ; 
 scalar_t__ FUNC17 (struct tg3*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct tg3*,int,struct skb_shared_hwtstamps*) ; 
 scalar_t__ FUNC19 (struct tg3_napi*) ; 
 int /*<<< orphan*/  FUNC20 (struct tg3*) ; 
 int FUNC21 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC22 (int) ; 

__attribute__((used)) static void FUNC23(struct tg3_napi *tnapi)
{
	struct tg3 *tp = tnapi->tp;
	u32 hw_idx = tnapi->hw_status->idx[0].tx_consumer;
	u32 sw_idx = tnapi->tx_cons;
	struct netdev_queue *txq;
	int index = tnapi - tp->napi;

	if (FUNC17(tp, ENABLE_TSS))
		index--;

	txq = FUNC6(tp->dev, index);

	while (sw_idx != hw_idx) {
		struct tg3_tx_ring_info *ri = &tnapi->tx_buffers[sw_idx];
		struct sk_buff *skb = ri->skb;
		int i, tx_bug = 0;

		if (FUNC22(skb == NULL)) {
			FUNC20(tp);
			return;
		}

		if (tnapi->tx_ring[sw_idx].len_flags & TXD_FLAG_HWTSTAMP) {
			struct skb_shared_hwtstamps timestamp;
			u64 hwclock = FUNC21(TG3_TX_TSTAMP_LSB);
			hwclock |= (u64)FUNC21(TG3_TX_TSTAMP_MSB) << 32;

			FUNC18(tp, hwclock, &timestamp);

			FUNC14(skb, &timestamp);
		}

		FUNC10(tp->pdev,
				 FUNC5(ri, mapping),
				 FUNC12(skb),
				 PCI_DMA_TODEVICE);

		ri->skb = NULL;

		while (ri->fragmented) {
			ri->fragmented = false;
			sw_idx = FUNC0(sw_idx);
			ri = &tnapi->tx_buffers[sw_idx];
		}

		sw_idx = FUNC0(sw_idx);

		for (i = 0; i < FUNC13(skb)->nr_frags; i++) {
			ri = &tnapi->tx_buffers[sw_idx];
			if (FUNC22(ri->skb != NULL || sw_idx == hw_idx))
				tx_bug = 1;

			FUNC9(tp->pdev,
				       FUNC5(ri, mapping),
				       FUNC11(&FUNC13(skb)->frags[i]),
				       PCI_DMA_TODEVICE);

			while (ri->fragmented) {
				ri->fragmented = false;
				sw_idx = FUNC0(sw_idx);
				ri = &tnapi->tx_buffers[sw_idx];
			}

			sw_idx = FUNC0(sw_idx);
		}

		FUNC4(skb);

		if (FUNC22(tx_bug)) {
			FUNC20(tp);
			return;
		}
	}

	tnapi->tx_cons = sw_idx;

	/* Need to make the tx_cons update visible to tg3_start_xmit()
	 * before checking for netif_queue_stopped().  Without the
	 * memory barrier, there is a small possibility that tg3_start_xmit()
	 * will miss it and cause the queue to be stopped forever.
	 */
	FUNC15();

	if (FUNC22(FUNC7(txq) &&
		     (FUNC19(tnapi) > FUNC1(tnapi)))) {
		FUNC2(txq, FUNC16());
		if (FUNC7(txq) &&
		    (FUNC19(tnapi) > FUNC1(tnapi)))
			FUNC8(txq);
		FUNC3(txq);
	}
}