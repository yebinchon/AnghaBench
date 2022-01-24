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
struct sk_buff {int len; int /*<<< orphan*/  data; } ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct net_device {TYPE_1__ dev; int /*<<< orphan*/  trans_start; } ;
struct mpc52xx_fec_priv {int /*<<< orphan*/  lock; int /*<<< orphan*/  tx_dmatsk; } ;
struct bcom_fec_bd {int status; int /*<<< orphan*/  skb_pa; } ;

/* Variables and functions */
 int BCOM_FEC_TX_BD_TC ; 
 int BCOM_FEC_TX_BD_TFD ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int NETDEV_TX_BUSY ; 
 int NETDEV_TX_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jiffies ; 
 scalar_t__ FUNC5 () ; 
 struct mpc52xx_fec_priv* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC10(struct sk_buff *skb, struct net_device *dev)
{
	struct mpc52xx_fec_priv *priv = FUNC6(dev);
	struct bcom_fec_bd *bd;
	unsigned long flags;

	if (FUNC1(priv->tx_dmatsk)) {
		if (FUNC5())
			FUNC3(&dev->dev, "transmit queue overrun\n");
		return NETDEV_TX_BUSY;
	}

	FUNC8(&priv->lock, flags);
	dev->trans_start = jiffies;

	bd = (struct bcom_fec_bd *)
		FUNC0(priv->tx_dmatsk);

	bd->status = skb->len | BCOM_FEC_TX_BD_TFD | BCOM_FEC_TX_BD_TC;
	bd->skb_pa = FUNC4(dev->dev.parent, skb->data, skb->len,
				    DMA_TO_DEVICE);

	FUNC2(priv->tx_dmatsk, skb);

	if (FUNC1(priv->tx_dmatsk)) {
		FUNC7(dev);
	}

	FUNC9(&priv->lock, flags);

	return NETDEV_TX_OK;
}