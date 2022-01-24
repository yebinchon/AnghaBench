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
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int len; int /*<<< orphan*/  data; } ;
struct net_device {int /*<<< orphan*/  trans_start; } ;
struct bigmac {int tx_new; scalar_t__ creg; int /*<<< orphan*/  lock; TYPE_3__* bmac_block; struct sk_buff** tx_skbs; TYPE_1__* bigmac_op; } ;
struct TYPE_6__ {TYPE_2__* be_txd; } ;
struct TYPE_5__ {int tx_flags; int /*<<< orphan*/  tx_addr; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ CREG_CTRL ; 
 int /*<<< orphan*/  CREG_CTRL_TWAKEUP ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int NETDEV_TX_OK ; 
 int FUNC1 (int) ; 
 int TXD_EOP ; 
 int TXD_LENGTH ; 
 int TXD_OWN ; 
 int TXD_SOP ; 
 int TXD_UPDATE ; 
 scalar_t__ FUNC2 (struct bigmac*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jiffies ; 
 struct bigmac* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct sk_buff *skb, struct net_device *dev)
{
	struct bigmac *bp = FUNC4(dev);
	int len, entry;
	u32 mapping;

	len = skb->len;
	mapping = FUNC3(&bp->bigmac_op->dev, skb->data,
				 len, DMA_TO_DEVICE);

	/* Avoid a race... */
	FUNC7(&bp->lock);
	entry = bp->tx_new;
	FUNC0(("bigmac_start_xmit: len(%d) entry(%d)\n", len, entry));
	bp->bmac_block->be_txd[entry].tx_flags = TXD_UPDATE;
	bp->tx_skbs[entry] = skb;
	bp->bmac_block->be_txd[entry].tx_addr = mapping;
	bp->bmac_block->be_txd[entry].tx_flags =
		(TXD_OWN | TXD_SOP | TXD_EOP | (len & TXD_LENGTH));
	bp->tx_new = FUNC1(entry);
	if (FUNC2(bp) <= 0)
		FUNC5(dev);
	FUNC8(&bp->lock);

	/* Get it going. */
	FUNC6(CREG_CTRL_TWAKEUP, bp->creg + CREG_CTRL);


	dev->trans_start = jiffies;

	return NETDEV_TX_OK;
}