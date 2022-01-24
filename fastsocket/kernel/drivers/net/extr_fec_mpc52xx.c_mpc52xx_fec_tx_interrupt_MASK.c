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
struct sk_buff {int /*<<< orphan*/  len; } ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct net_device {TYPE_1__ dev; } ;
struct mpc52xx_fec_priv {int /*<<< orphan*/  lock; int /*<<< orphan*/  tx_dmatsk; } ;
struct bcom_fec_bd {int /*<<< orphan*/  skb_pa; } ;
struct bcom_bd {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct bcom_bd**) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mpc52xx_fec_priv* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC8(int irq, void *dev_id)
{
	struct net_device *dev = dev_id;
	struct mpc52xx_fec_priv *priv = FUNC4(dev);

	FUNC6(&priv->lock);

	while (FUNC0(priv->tx_dmatsk)) {
		struct sk_buff *skb;
		struct bcom_fec_bd *bd;
		skb = FUNC1(priv->tx_dmatsk, NULL,
				(struct bcom_bd **)&bd);
		FUNC3(dev->dev.parent, bd->skb_pa, skb->len,
				 DMA_TO_DEVICE);

		FUNC2(skb);
	}

	FUNC5(dev);

	FUNC7(&priv->lock);

	return IRQ_HANDLED;
}