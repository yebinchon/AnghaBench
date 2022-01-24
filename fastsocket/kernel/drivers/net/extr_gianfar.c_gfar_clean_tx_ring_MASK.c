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
struct txbd8 {int lstatus; int /*<<< orphan*/  length; int /*<<< orphan*/  bufPtr; } ;
struct sk_buff {int dummy; } ;
struct TYPE_5__ {int tx_packets; } ;
struct net_device {TYPE_2__ stats; } ;
struct gfar_private {int tx_ring_size; int skb_dirtytx; scalar_t__ rx_ring_size; int num_txbdfree; struct txbd8* dirty_tx; struct sk_buff** tx_skbuff; int /*<<< orphan*/  rx_recycle; scalar_t__ rx_buffer_size; TYPE_1__* ofdev; struct txbd8* tx_bd_base; } ;
struct TYPE_6__ {int nr_frags; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int BD_LENGTH_MASK ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 scalar_t__ RXBUF_ALIGNMENT ; 
 int /*<<< orphan*/  TXBD_READY ; 
 int /*<<< orphan*/  TXBD_WRAP ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct gfar_private* FUNC6 (struct net_device*) ; 
 scalar_t__ FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 struct txbd8* FUNC9 (struct txbd8*,struct txbd8*,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (struct sk_buff*,scalar_t__) ; 
 TYPE_3__* FUNC12 (struct sk_buff*) ; 
 struct txbd8* FUNC13 (struct txbd8*,int,struct txbd8*,int) ; 

__attribute__((used)) static int FUNC14(struct net_device *dev)
{
	struct gfar_private *priv = FUNC6(dev);
	struct txbd8 *bdp;
	struct txbd8 *lbdp = NULL;
	struct txbd8 *base = priv->tx_bd_base;
	struct sk_buff *skb;
	int skb_dirtytx;
	int tx_ring_size = priv->tx_ring_size;
	int frags = 0;
	int i;
	int howmany = 0;
	u32 lstatus;

	bdp = priv->dirty_tx;
	skb_dirtytx = priv->skb_dirtytx;

	while ((skb = priv->tx_skbuff[skb_dirtytx])) {
		frags = FUNC12(skb)->nr_frags;
		lbdp = FUNC13(bdp, frags, base, tx_ring_size);

		lstatus = lbdp->lstatus;

		/* Only clean completed frames */
		if ((lstatus & FUNC0(TXBD_READY)) &&
				(lstatus & BD_LENGTH_MASK))
			break;

		FUNC5(&priv->ofdev->dev,
				bdp->bufPtr,
				bdp->length,
				DMA_TO_DEVICE);

		bdp->lstatus &= FUNC0(TXBD_WRAP);
		bdp = FUNC9(bdp, base, tx_ring_size);

		for (i = 0; i < frags; i++) {
			FUNC4(&priv->ofdev->dev,
					bdp->bufPtr,
					bdp->length,
					DMA_TO_DEVICE);
			bdp->lstatus &= FUNC0(TXBD_WRAP);
			bdp = FUNC9(bdp, base, tx_ring_size);
		}

		/*
		 * If there's room in the queue (limit it to rx_buffer_size)
		 * we add this skb back into the pool, if it's the right size
		 */
		if (FUNC10(&priv->rx_recycle) < priv->rx_ring_size &&
				FUNC11(skb, priv->rx_buffer_size +
					RXBUF_ALIGNMENT))
			FUNC2(&priv->rx_recycle, skb);
		else
			FUNC3(skb);

		priv->tx_skbuff[skb_dirtytx] = NULL;

		skb_dirtytx = (skb_dirtytx + 1) &
			FUNC1(tx_ring_size);

		howmany++;
		priv->num_txbdfree += frags + 1;
	}

	/* If we freed a buffer, we can restart transmission, if necessary */
	if (FUNC7(dev) && priv->num_txbdfree)
		FUNC8(dev);

	/* Update dirty indicators */
	priv->skb_dirtytx = skb_dirtytx;
	priv->dirty_tx = bdp;

	dev->stats.tx_packets += howmany;

	return howmany;
}