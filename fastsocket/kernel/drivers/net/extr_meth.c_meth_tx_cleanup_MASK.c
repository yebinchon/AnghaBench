#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {scalar_t__ len; } ;
struct TYPE_6__ {int /*<<< orphan*/  tx_errors; int /*<<< orphan*/  tx_bytes; int /*<<< orphan*/  tx_packets; } ;
struct net_device {TYPE_1__ stats; } ;
struct meth_private {unsigned long tx_read; size_t tx_write; int /*<<< orphan*/  meth_lock; int /*<<< orphan*/  tx_count; TYPE_3__* tx_ring; struct sk_buff** tx_skbs; int /*<<< orphan*/  dma_ctrl; } ;
struct TYPE_9__ {int int_stat; int /*<<< orphan*/  dma_ctrl; } ;
struct TYPE_10__ {TYPE_4__ eth; } ;
struct TYPE_7__ {unsigned long raw; } ;
struct TYPE_8__ {TYPE_2__ header; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  METH_DMA_TX_INT_EN ; 
 int METH_INT_TX_EMPTY ; 
 int METH_INT_TX_PKT ; 
 unsigned long METH_TX_ST_DEFER ; 
 unsigned long METH_TX_ST_DONE ; 
 unsigned long METH_TX_ST_EXCCOLL ; 
 unsigned long METH_TX_ST_LATECOLL ; 
 unsigned long METH_TX_ST_SUCCESS ; 
 unsigned long METH_TX_ST_TOOLONG ; 
 unsigned long METH_TX_ST_UNDERRUN ; 
 unsigned long TX_INFO_RPTR ; 
 int TX_RING_ENTRIES ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 TYPE_5__* mace ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 struct meth_private* FUNC3 (struct net_device*) ; 
 scalar_t__ FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC9(struct net_device* dev, unsigned long int_status)
{
	struct meth_private *priv = FUNC3(dev);
	unsigned long status, flags;
	struct sk_buff *skb;
	unsigned long rptr = (int_status&TX_INFO_RPTR) >> 16;

	FUNC7(&priv->meth_lock, flags);

	/* Stop DMA notification */
	priv->dma_ctrl &= ~(METH_DMA_TX_INT_EN);
	mace->eth.dma_ctrl = priv->dma_ctrl;

	while (priv->tx_read != rptr) {
		skb = priv->tx_skbs[priv->tx_read];
		status = priv->tx_ring[priv->tx_read].header.raw;
#if MFE_DEBUG>=1
		if (priv->tx_read == priv->tx_write)
			DPRINTK("Auchi! tx_read=%d,tx_write=%d,rptr=%d?\n", priv->tx_read, priv->tx_write,rptr);
#endif
		if (status & METH_TX_ST_DONE) {
			if (status & METH_TX_ST_SUCCESS){
				dev->stats.tx_packets++;
				dev->stats.tx_bytes += skb->len;
			} else {
				dev->stats.tx_errors++;
#if MFE_DEBUG>=1
				DPRINTK("TX error: status=%016lx <",status);
				if(status & METH_TX_ST_SUCCESS)
					printk(" SUCCESS");
				if(status & METH_TX_ST_TOOLONG)
					printk(" TOOLONG");
				if(status & METH_TX_ST_UNDERRUN)
					printk(" UNDERRUN");
				if(status & METH_TX_ST_EXCCOLL)
					printk(" EXCCOLL");
				if(status & METH_TX_ST_DEFER)
					printk(" DEFER");
				if(status & METH_TX_ST_LATECOLL)
					printk(" LATECOLL");
				printk(" >\n");
#endif
			}
		} else {
			FUNC0("RPTR points us here, but packet not done?\n");
			break;
		}
		FUNC1(skb);
		priv->tx_skbs[priv->tx_read] = NULL;
		priv->tx_ring[priv->tx_read].header.raw = 0;
		priv->tx_read = (priv->tx_read+1)&(TX_RING_ENTRIES-1);
		priv->tx_count--;
	}

	/* wake up queue if it was stopped */
	if (FUNC4(dev) && !FUNC2(dev)) {
		FUNC5(dev);
	}

	mace->eth.int_stat = METH_INT_TX_EMPTY | METH_INT_TX_PKT;
	FUNC8(&priv->meth_lock, flags);
}