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
struct skb_frame_desc {int skb_dma; } ;
struct queue_entry_priv_mmio {int /*<<< orphan*/  desc; } ;
struct queue_entry {TYPE_2__* skb; TYPE_1__* queue; struct queue_entry_priv_mmio* priv_data; } ;
struct TYPE_4__ {int len; } ;
struct TYPE_3__ {scalar_t__ qid; } ;

/* Variables and functions */
 scalar_t__ QID_RX ; 
 int /*<<< orphan*/  RXD_W0_OWNER_NIC ; 
 int /*<<< orphan*/  RXD_W1_BUFFER_ADDRESS ; 
 int /*<<< orphan*/  RXD_W2_BUFFER_LENGTH ; 
 int /*<<< orphan*/  TXD_W0_OWNER_NIC ; 
 int /*<<< orphan*/  TXD_W0_VALID ; 
 struct skb_frame_desc* FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct queue_entry *entry)
{
	struct queue_entry_priv_mmio *entry_priv = entry->priv_data;
	struct skb_frame_desc *skbdesc = FUNC0(entry->skb);
	u32 word;

	if (entry->queue->qid == QID_RX) {
		FUNC1(entry_priv->desc, 2, &word);
		FUNC3(&word, RXD_W2_BUFFER_LENGTH, entry->skb->len);
		FUNC2(entry_priv->desc, 2, word);

		FUNC1(entry_priv->desc, 1, &word);
		FUNC3(&word, RXD_W1_BUFFER_ADDRESS, skbdesc->skb_dma);
		FUNC2(entry_priv->desc, 1, word);

		FUNC1(entry_priv->desc, 0, &word);
		FUNC3(&word, RXD_W0_OWNER_NIC, 1);
		FUNC2(entry_priv->desc, 0, word);
	} else {
		FUNC1(entry_priv->desc, 0, &word);
		FUNC3(&word, TXD_W0_VALID, 0);
		FUNC3(&word, TXD_W0_OWNER_NIC, 0);
		FUNC2(entry_priv->desc, 0, word);
	}
}