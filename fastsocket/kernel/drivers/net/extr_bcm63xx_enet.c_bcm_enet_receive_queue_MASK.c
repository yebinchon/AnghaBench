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
struct sk_buff {int /*<<< orphan*/  protocol; struct net_device* dev; int /*<<< orphan*/  data; } ;
struct net_device {int /*<<< orphan*/  last_rx; } ;
struct device {int dummy; } ;
struct TYPE_4__ {unsigned int rx_bytes; int /*<<< orphan*/  rx_packets; int /*<<< orphan*/  rx_dropped; int /*<<< orphan*/  rx_fifo_errors; int /*<<< orphan*/  rx_frame_errors; int /*<<< orphan*/  rx_crc_errors; int /*<<< orphan*/  rx_length_errors; int /*<<< orphan*/  rx_errors; } ;
struct bcm_enet_priv {int rx_desc_count; int rx_curr_desc; int rx_ring_size; int /*<<< orphan*/  rx_chan; TYPE_2__ stats; struct sk_buff** rx_skb; int /*<<< orphan*/  rx_skb_size; TYPE_1__* pdev; struct bcm_enet_desc* rx_desc_cpu; } ;
struct bcm_enet_desc {int len_stat; int /*<<< orphan*/  address; } ;
struct TYPE_3__ {struct device dev; } ;

/* Variables and functions */
 int DMADESC_CRC_MASK ; 
 int DMADESC_ERR_MASK ; 
 int DMADESC_ESOP_MASK ; 
 int DMADESC_LENGTH_MASK ; 
 int DMADESC_LENGTH_SHIFT ; 
 int DMADESC_OVSIZE_MASK ; 
 int DMADESC_OV_MASK ; 
 int DMADESC_OWNER_MASK ; 
 int DMADESC_UNDER_MASK ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  ENETDMA_CHANCFG_EN_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ NET_IP_ALIGN ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 unsigned int copybreak ; 
 int /*<<< orphan*/  FUNC2 (struct device*,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct bcm_enet_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,struct net_device*) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 struct sk_buff* FUNC8 (struct net_device*,scalar_t__) ; 
 struct bcm_enet_priv* FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*,unsigned int) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*,scalar_t__) ; 
 scalar_t__ FUNC14 (int) ; 

__attribute__((used)) static int FUNC15(struct net_device *dev, int budget)
{
	struct bcm_enet_priv *priv;
	struct device *kdev;
	int processed;

	priv = FUNC9(dev);
	kdev = &priv->pdev->dev;
	processed = 0;

	/* don't scan ring further than number of refilled
	 * descriptor */
	if (budget > priv->rx_desc_count)
		budget = priv->rx_desc_count;

	do {
		struct bcm_enet_desc *desc;
		struct sk_buff *skb;
		int desc_idx;
		u32 len_stat;
		unsigned int len;

		desc_idx = priv->rx_curr_desc;
		desc = &priv->rx_desc_cpu[desc_idx];

		/* make sure we actually read the descriptor status at
		 * each loop */
		FUNC11();

		len_stat = desc->len_stat;

		/* break if dma ownership belongs to hw */
		if (len_stat & DMADESC_OWNER_MASK)
			break;

		processed++;
		priv->rx_curr_desc++;
		if (priv->rx_curr_desc == priv->rx_ring_size)
			priv->rx_curr_desc = 0;
		priv->rx_desc_count--;

		/* if the packet does not have start of packet _and_
		 * end of packet flag set, then just recycle it */
		if ((len_stat & DMADESC_ESOP_MASK) != DMADESC_ESOP_MASK) {
			priv->stats.rx_dropped++;
			continue;
		}

		/* recycle packet if it's marked as bad */
		if (FUNC14(len_stat & DMADESC_ERR_MASK)) {
			priv->stats.rx_errors++;

			if (len_stat & DMADESC_OVSIZE_MASK)
				priv->stats.rx_length_errors++;
			if (len_stat & DMADESC_CRC_MASK)
				priv->stats.rx_crc_errors++;
			if (len_stat & DMADESC_UNDER_MASK)
				priv->stats.rx_frame_errors++;
			if (len_stat & DMADESC_OV_MASK)
				priv->stats.rx_fifo_errors++;
			continue;
		}

		/* valid packet */
		skb = priv->rx_skb[desc_idx];
		len = (len_stat & DMADESC_LENGTH_MASK) >> DMADESC_LENGTH_SHIFT;
		/* don't include FCS */
		len -= 4;

		if (len < copybreak) {
			struct sk_buff *nskb;

			nskb = FUNC8(dev, len + NET_IP_ALIGN);
			if (!nskb) {
				/* forget packet, just rearm desc */
				priv->stats.rx_dropped++;
				continue;
			}

			/* since we're copying the data, we can align
			 * them properly */
			FUNC13(nskb, NET_IP_ALIGN);
			FUNC2(kdev, desc->address,
						len, DMA_FROM_DEVICE);
			FUNC7(nskb->data, skb->data, len);
			FUNC3(kdev, desc->address,
						   len, DMA_FROM_DEVICE);
			skb = nskb;
		} else {
			FUNC4(&priv->pdev->dev, desc->address,
					 priv->rx_skb_size, DMA_FROM_DEVICE);
			priv->rx_skb[desc_idx] = NULL;
		}

		FUNC12(skb, len);
		skb->dev = dev;
		skb->protocol = FUNC6(skb, dev);
		priv->stats.rx_packets++;
		priv->stats.rx_bytes += len;
		dev->last_rx = jiffies;
		FUNC10(skb);

	} while (--budget > 0);

	if (processed || !priv->rx_desc_count) {
		FUNC1(dev);

		/* kick rx dma */
		FUNC5(priv, ENETDMA_CHANCFG_EN_MASK,
				FUNC0(priv->rx_chan));
	}

	return processed;
}