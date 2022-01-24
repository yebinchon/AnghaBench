#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct tx_queue {int index; scalar_t__ tx_desc_count; int tx_used_desc; int tx_ring_size; int /*<<< orphan*/  tx_skb; struct tx_desc* tx_desc_area; } ;
struct tx_desc {int cmd_sts; int /*<<< orphan*/  byte_cnt; int /*<<< orphan*/  buf_ptr; } ;
struct sk_buff {int dummy; } ;
struct netdev_queue {int dummy; } ;
struct mv643xx_eth_private {scalar_t__ rx_ring_size; int work_tx; int /*<<< orphan*/  rx_recycle; int /*<<< orphan*/  skb_size; TYPE_2__* dev; } ;
struct TYPE_6__ {int /*<<< orphan*/  parent; } ;
struct TYPE_4__ {int /*<<< orphan*/  tx_errors; } ;
struct TYPE_5__ {TYPE_3__ dev; TYPE_1__ stats; } ;

/* Variables and functions */
 int BUFFER_OWNED_BY_DMA ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int ERROR_SUMMARY ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int TX_FIRST_DESC ; 
 int TX_LAST_DESC ; 
 int /*<<< orphan*/  FUNC0 (struct netdev_queue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct netdev_queue*) ; 
 struct sk_buff* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct netdev_queue* FUNC8 (TYPE_2__*,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 struct mv643xx_eth_private* FUNC12 (struct tx_queue*) ; 

__attribute__((used)) static int FUNC13(struct tx_queue *txq, int budget, int force)
{
	struct mv643xx_eth_private *mp = FUNC12(txq);
	struct netdev_queue *nq = FUNC8(mp->dev, txq->index);
	int reclaimed;

	FUNC0(nq, FUNC11());

	reclaimed = 0;
	while (reclaimed < budget && txq->tx_desc_count > 0) {
		int tx_index;
		struct tx_desc *desc;
		u32 cmd_sts;
		struct sk_buff *skb;

		tx_index = txq->tx_used_desc;
		desc = &txq->tx_desc_area[tx_index];
		cmd_sts = desc->cmd_sts;

		if (cmd_sts & BUFFER_OWNED_BY_DMA) {
			if (!force)
				break;
			desc->cmd_sts = cmd_sts & ~BUFFER_OWNED_BY_DMA;
		}

		txq->tx_used_desc = tx_index + 1;
		if (txq->tx_used_desc == txq->tx_ring_size)
			txq->tx_used_desc = 0;

		reclaimed++;
		txq->tx_desc_count--;

		skb = NULL;
		if (cmd_sts & TX_LAST_DESC)
			skb = FUNC2(&txq->tx_skb);

		if (cmd_sts & ERROR_SUMMARY) {
			FUNC5(KERN_INFO, &mp->dev->dev, "tx error\n");
			mp->dev->stats.tx_errors++;
		}

		if (cmd_sts & TX_FIRST_DESC) {
			FUNC7(mp->dev->dev.parent, desc->buf_ptr,
					 desc->byte_cnt, DMA_TO_DEVICE);
		} else {
			FUNC6(mp->dev->dev.parent, desc->buf_ptr,
				       desc->byte_cnt, DMA_TO_DEVICE);
		}

		if (skb != NULL) {
			if (FUNC9(&mp->rx_recycle) <
					mp->rx_ring_size &&
			    FUNC10(skb, mp->skb_size))
				FUNC3(&mp->rx_recycle, skb);
			else
				FUNC4(skb);
		}
	}

	FUNC1(nq);

	if (reclaimed < budget)
		mp->work_tx &= ~(1 << txq->index);

	return reclaimed;
}