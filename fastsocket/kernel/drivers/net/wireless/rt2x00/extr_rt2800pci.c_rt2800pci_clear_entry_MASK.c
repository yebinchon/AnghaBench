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
typedef  int /*<<< orphan*/  u32 ;
struct skb_frame_desc {int skb_dma; } ;
struct rt2x00_dev {int dummy; } ;
struct queue_entry_priv_mmio {int /*<<< orphan*/  desc; } ;
struct queue_entry {int /*<<< orphan*/  entry_idx; TYPE_1__* queue; int /*<<< orphan*/  skb; struct queue_entry_priv_mmio* priv_data; } ;
struct TYPE_2__ {scalar_t__ qid; struct rt2x00_dev* rt2x00dev; } ;

/* Variables and functions */
 scalar_t__ QID_RX ; 
 int /*<<< orphan*/  RXD_W0_SDP0 ; 
 int /*<<< orphan*/  RXD_W1_DMA_DONE ; 
 int /*<<< orphan*/  RX_CRX_IDX ; 
 int /*<<< orphan*/  TXD_W1_DMA_DONE ; 
 struct skb_frame_desc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct rt2x00_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct queue_entry *entry)
{
	struct queue_entry_priv_mmio *entry_priv = entry->priv_data;
	struct skb_frame_desc *skbdesc = FUNC0(entry->skb);
	struct rt2x00_dev *rt2x00dev = entry->queue->rt2x00dev;
	u32 word;

	if (entry->queue->qid == QID_RX) {
		FUNC1(entry_priv->desc, 0, &word);
		FUNC3(&word, RXD_W0_SDP0, skbdesc->skb_dma);
		FUNC2(entry_priv->desc, 0, word);

		FUNC1(entry_priv->desc, 1, &word);
		FUNC3(&word, RXD_W1_DMA_DONE, 0);
		FUNC2(entry_priv->desc, 1, word);

		/*
		 * Set RX IDX in register to inform hardware that we have
		 * handled this entry and it is available for reuse again.
		 */
		FUNC4(rt2x00dev, RX_CRX_IDX,
					  entry->entry_idx);
	} else {
		FUNC1(entry_priv->desc, 1, &word);
		FUNC3(&word, TXD_W1_DMA_DONE, 1);
		FUNC2(entry_priv->desc, 1, word);
	}
}