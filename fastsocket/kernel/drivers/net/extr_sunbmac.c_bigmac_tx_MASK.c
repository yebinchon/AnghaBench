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
struct sk_buff {scalar_t__ len; } ;
struct net_device {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  tx_bytes; int /*<<< orphan*/  tx_packets; } ;
struct bigmac {int tx_old; int tx_new; int /*<<< orphan*/  lock; struct net_device* dev; struct sk_buff** tx_skbs; TYPE_3__* bigmac_op; TYPE_2__ enet_stats; TYPE_1__* bmac_block; } ;
struct be_txd {int tx_flags; int /*<<< orphan*/  tx_addr; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {struct be_txd* be_txd; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int) ; 
 int TXD_OWN ; 
 scalar_t__ FUNC2 (struct bigmac*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct bigmac *bp)
{
	struct be_txd *txbase = &bp->bmac_block->be_txd[0];
	struct net_device *dev = bp->dev;
	int elem;

	FUNC7(&bp->lock);

	elem = bp->tx_old;
	FUNC0(("bigmac_tx: tx_old[%d] ", elem));
	while (elem != bp->tx_new) {
		struct sk_buff *skb;
		struct be_txd *this = &txbase[elem];

		FUNC0(("this(%p) [flags(%08x)addr(%08x)]",
		     this, this->tx_flags, this->tx_addr));

		if (this->tx_flags & TXD_OWN)
			break;
		skb = bp->tx_skbs[elem];
		bp->enet_stats.tx_packets++;
		bp->enet_stats.tx_bytes += skb->len;
		FUNC4(&bp->bigmac_op->dev,
				 this->tx_addr, skb->len,
				 DMA_TO_DEVICE);

		FUNC0(("skb(%p) ", skb));
		bp->tx_skbs[elem] = NULL;
		FUNC3(skb);

		elem = FUNC1(elem);
	}
	FUNC0((" DONE, tx_old=%d\n", elem));
	bp->tx_old = elem;

	if (FUNC5(dev) &&
	    FUNC2(bp) > 0)
		FUNC6(bp->dev);

	FUNC8(&bp->lock);
}