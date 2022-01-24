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
struct sk_buff {scalar_t__ len; } ;
struct cp_private {unsigned int tx_head; unsigned int tx_tail; TYPE_3__* dev; struct sk_buff** tx_skb; TYPE_1__* pdev; struct cp_desc* tx_ring; } ;
struct cp_desc {int /*<<< orphan*/  opts1; int /*<<< orphan*/  addr; } ;
struct TYPE_5__ {int collisions; int /*<<< orphan*/  tx_bytes; int /*<<< orphan*/  tx_packets; int /*<<< orphan*/  tx_fifo_errors; int /*<<< orphan*/  tx_carrier_errors; int /*<<< orphan*/  tx_aborted_errors; int /*<<< orphan*/  tx_window_errors; int /*<<< orphan*/  tx_errors; } ;
struct TYPE_6__ {int /*<<< orphan*/  name; TYPE_2__ stats; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int DescOwn ; 
 int LastFrag ; 
 scalar_t__ MAX_SKB_FRAGS ; 
 unsigned int FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 scalar_t__ FUNC2 (struct cp_private*) ; 
 int TxColCntMask ; 
 int TxColCntShift ; 
 int TxError ; 
 int TxFIFOUnder ; 
 int TxLinkFail ; 
 int TxMaxCol ; 
 int TxOWC ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct cp_private*) ; 
 scalar_t__ FUNC8 (struct cp_private*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC11 () ; 

__attribute__((used)) static void FUNC12 (struct cp_private *cp)
{
	unsigned tx_head = cp->tx_head;
	unsigned tx_tail = cp->tx_tail;

	while (tx_tail != tx_head) {
		struct cp_desc *txd = cp->tx_ring + tx_tail;
		struct sk_buff *skb;
		u32 status;

		FUNC11();
		status = FUNC5(txd->opts1);
		if (status & DescOwn)
			break;

		skb = cp->tx_skb[tx_tail];
		FUNC0(!skb);

		FUNC4(&cp->pdev->dev, FUNC6(txd->addr),
				 FUNC5(txd->opts1) & 0xffff,
				 PCI_DMA_TODEVICE);

		if (status & LastFrag) {
			if (status & (TxError | TxFIFOUnder)) {
				if (FUNC8(cp))
					FUNC10("%s: tx err, status 0x%x\n",
					       cp->dev->name, status);
				cp->dev->stats.tx_errors++;
				if (status & TxOWC)
					cp->dev->stats.tx_window_errors++;
				if (status & TxMaxCol)
					cp->dev->stats.tx_aborted_errors++;
				if (status & TxLinkFail)
					cp->dev->stats.tx_carrier_errors++;
				if (status & TxFIFOUnder)
					cp->dev->stats.tx_fifo_errors++;
			} else {
				cp->dev->stats.collisions +=
					((status >> TxColCntShift) & TxColCntMask);
				cp->dev->stats.tx_packets++;
				cp->dev->stats.tx_bytes += skb->len;
				if (FUNC7(cp))
					FUNC10("%s: tx done, slot %d\n", cp->dev->name, tx_tail);
			}
			FUNC3(skb);
		}

		cp->tx_skb[tx_tail] = NULL;

		tx_tail = FUNC1(tx_tail);
	}

	cp->tx_tail = tx_tail;

	if (FUNC2(cp) > (MAX_SKB_FRAGS + 1))
		FUNC9(cp->dev);
}