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
typedef  int u32 ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int tx_bytes; int /*<<< orphan*/  tx_packets; int /*<<< orphan*/  tx_errors; } ;
struct ns83820 {int tx_done_idx; int tx_free_idx; int /*<<< orphan*/ * tx_descs; int /*<<< orphan*/  pci_dev; int /*<<< orphan*/  nr_tx_skbs; struct sk_buff** tx_skbs; TYPE_1__ stats; } ;
typedef  struct sk_buff net_device ;
typedef  int /*<<< orphan*/  dma_addr_t ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int CMDSTS_ERR ; 
 int CMDSTS_LEN_MASK ; 
 int CMDSTS_OK ; 
 int CMDSTS_OWN ; 
 int DESC_BUFPTR ; 
 size_t DESC_CMDSTS ; 
 int DESC_SIZE ; 
 int NR_TX_DESC ; 
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 struct ns83820* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,...) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ FUNC8 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (struct ns83820*) ; 

__attribute__((used)) static void FUNC14(struct net_device *ndev)
{
	struct ns83820 *dev = FUNC0(ndev);
	u32 cmdsts, tx_done_idx;
	__le32 *desc;

	FUNC5("do_tx_done(%p)\n", ndev);
	tx_done_idx = dev->tx_done_idx;
	desc = dev->tx_descs + (tx_done_idx * DESC_SIZE);

	FUNC5("tx_done_idx=%d free_idx=%d cmdsts=%08x\n",
		tx_done_idx, dev->tx_free_idx, FUNC6(desc[DESC_CMDSTS]));
	while ((tx_done_idx != dev->tx_free_idx) &&
	       !(CMDSTS_OWN & (cmdsts = FUNC6(desc[DESC_CMDSTS]))) ) {
		struct sk_buff *skb;
		unsigned len;
		dma_addr_t addr;

		if (cmdsts & CMDSTS_ERR)
			dev->stats.tx_errors ++;
		if (cmdsts & CMDSTS_OK)
			dev->stats.tx_packets ++;
		if (cmdsts & CMDSTS_OK)
			dev->stats.tx_bytes += cmdsts & 0xffff;

		FUNC5("tx_done_idx=%d free_idx=%d cmdsts=%08x\n",
			tx_done_idx, dev->tx_free_idx, cmdsts);
		skb = dev->tx_skbs[tx_done_idx];
		dev->tx_skbs[tx_done_idx] = NULL;
		FUNC5("done(%p)\n", skb);

		len = cmdsts & CMDSTS_LEN_MASK;
		addr = FUNC3(desc + DESC_BUFPTR);
		if (skb) {
			FUNC12(dev->pci_dev,
					addr,
					len,
					PCI_DMA_TODEVICE);
			FUNC4(skb);
			FUNC1(&dev->nr_tx_skbs);
		} else
			FUNC11(dev->pci_dev,
					addr,
					len,
					PCI_DMA_TODEVICE);

		tx_done_idx = (tx_done_idx + 1) % NR_TX_DESC;
		dev->tx_done_idx = tx_done_idx;
		desc[DESC_CMDSTS] = FUNC2(0);
		FUNC7();
		desc = dev->tx_descs + (tx_done_idx * DESC_SIZE);
	}

	/* Allow network stack to resume queueing packets after we've
	 * finished transmitting at least 1/4 of the packets in the queue.
	 */
	if (FUNC8(ndev) && FUNC13(dev)) {
		FUNC5("start_queue(%p)\n", ndev);
		FUNC9(ndev);
		FUNC10(ndev);
	}
}