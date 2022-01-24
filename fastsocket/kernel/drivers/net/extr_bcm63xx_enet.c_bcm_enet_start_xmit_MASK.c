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
typedef  int u32 ;
struct sk_buff {int len; int /*<<< orphan*/  data; } ;
struct net_device {int /*<<< orphan*/  trans_start; } ;
struct TYPE_4__ {int tx_bytes; int /*<<< orphan*/  tx_packets; } ;
struct bcm_enet_priv {size_t tx_curr_desc; size_t tx_ring_size; int /*<<< orphan*/  tx_lock; TYPE_2__ stats; int /*<<< orphan*/  tx_desc_count; int /*<<< orphan*/  tx_chan; TYPE_1__* pdev; struct sk_buff** tx_skb; struct bcm_enet_desc* tx_desc_cpu; } ;
struct bcm_enet_desc {int len_stat; int /*<<< orphan*/  address; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int DMADESC_APPEND_CRC ; 
 int DMADESC_ESOP_MASK ; 
 int DMADESC_LENGTH_MASK ; 
 int DMADESC_LENGTH_SHIFT ; 
 int DMADESC_OWNER_MASK ; 
 int DMADESC_WRAP_MASK ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  ENETDMA_CHANCFG_EN_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int NETDEV_TX_BUSY ; 
 int NETDEV_TX_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bcm_enet_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jiffies ; 
 struct bcm_enet_priv* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 () ; 

__attribute__((used)) static int FUNC10(struct sk_buff *skb, struct net_device *dev)
{
	struct bcm_enet_priv *priv;
	struct bcm_enet_desc *desc;
	u32 len_stat;
	int ret;

	priv = FUNC4(dev);

	/* lock against tx reclaim */
	FUNC6(&priv->tx_lock);

	/* make sure  the tx hw queue  is not full,  should not happen
	 * since we stop queue before it's the case */
	if (FUNC8(!priv->tx_desc_count)) {
		FUNC5(dev);
		FUNC1(&priv->pdev->dev, "xmit called with no tx desc "
			"available?\n");
		ret = NETDEV_TX_BUSY;
		goto out_unlock;
	}

	/* point to the next available desc */
	desc = &priv->tx_desc_cpu[priv->tx_curr_desc];
	priv->tx_skb[priv->tx_curr_desc] = skb;

	/* fill descriptor */
	desc->address = FUNC2(&priv->pdev->dev, skb->data, skb->len,
				       DMA_TO_DEVICE);

	len_stat = (skb->len << DMADESC_LENGTH_SHIFT) & DMADESC_LENGTH_MASK;
	len_stat |= DMADESC_ESOP_MASK |
		DMADESC_APPEND_CRC |
		DMADESC_OWNER_MASK;

	priv->tx_curr_desc++;
	if (priv->tx_curr_desc == priv->tx_ring_size) {
		priv->tx_curr_desc = 0;
		len_stat |= DMADESC_WRAP_MASK;
	}
	priv->tx_desc_count--;

	/* dma might be already polling, make sure we update desc
	 * fields in correct order */
	FUNC9();
	desc->len_stat = len_stat;
	FUNC9();

	/* kick tx dma */
	FUNC3(priv, ENETDMA_CHANCFG_EN_MASK,
			FUNC0(priv->tx_chan));

	/* stop queue if no more desc available */
	if (!priv->tx_desc_count)
		FUNC5(dev);

	priv->stats.tx_bytes += skb->len;
	priv->stats.tx_packets++;
	dev->trans_start = jiffies;
	ret = NETDEV_TX_OK;

out_unlock:
	FUNC7(&priv->tx_lock);
	return ret;
}