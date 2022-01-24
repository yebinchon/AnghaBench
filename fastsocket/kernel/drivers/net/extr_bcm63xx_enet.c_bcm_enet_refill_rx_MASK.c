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
struct sk_buff {int /*<<< orphan*/  data; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {scalar_t__ expires; } ;
struct bcm_enet_priv {scalar_t__ rx_desc_count; scalar_t__ rx_ring_size; int rx_dirty_desc; int rx_skb_size; TYPE_2__ rx_timeout; TYPE_1__* pdev; int /*<<< orphan*/  rx_chan; struct sk_buff** rx_skb; struct bcm_enet_desc* rx_desc_cpu; } ;
struct bcm_enet_desc {int len_stat; int /*<<< orphan*/  address; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int DMADESC_LENGTH_SHIFT ; 
 int DMADESC_OWNER_MASK ; 
 int DMADESC_WRAP_MASK ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ HZ ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bcm_enet_priv*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 struct sk_buff* FUNC5 (struct net_device*,int) ; 
 struct bcm_enet_priv* FUNC6 (struct net_device*) ; 
 scalar_t__ FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 () ; 

__attribute__((used)) static int FUNC9(struct net_device *dev)
{
	struct bcm_enet_priv *priv;

	priv = FUNC6(dev);

	while (priv->rx_desc_count < priv->rx_ring_size) {
		struct bcm_enet_desc *desc;
		struct sk_buff *skb;
		dma_addr_t p;
		int desc_idx;
		u32 len_stat;

		desc_idx = priv->rx_dirty_desc;
		desc = &priv->rx_desc_cpu[desc_idx];

		if (!priv->rx_skb[desc_idx]) {
			skb = FUNC5(dev, priv->rx_skb_size);
			if (!skb)
				break;
			priv->rx_skb[desc_idx] = skb;

			p = FUNC3(&priv->pdev->dev, skb->data,
					   priv->rx_skb_size,
					   DMA_FROM_DEVICE);
			desc->address = p;
		}

		len_stat = priv->rx_skb_size << DMADESC_LENGTH_SHIFT;
		len_stat |= DMADESC_OWNER_MASK;
		if (priv->rx_dirty_desc == priv->rx_ring_size - 1) {
			len_stat |= DMADESC_WRAP_MASK;
			priv->rx_dirty_desc = 0;
		} else {
			priv->rx_dirty_desc++;
		}
		FUNC8();
		desc->len_stat = len_stat;

		priv->rx_desc_count++;

		/* tell dma engine we allocated one buffer */
		FUNC4(priv, 1, FUNC0(priv->rx_chan));
	}

	/* If rx ring is still empty, set a timer to try allocating
	 * again at a later time. */
	if (priv->rx_desc_count == 0 && FUNC7(dev)) {
		FUNC2(&priv->pdev->dev, "unable to refill rx ring\n");
		priv->rx_timeout.expires = jiffies + HZ;
		FUNC1(&priv->rx_timeout);
	}

	return 0;
}