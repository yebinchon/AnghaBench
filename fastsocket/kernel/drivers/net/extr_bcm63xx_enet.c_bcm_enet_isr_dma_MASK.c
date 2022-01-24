#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct net_device {int dummy; } ;
struct bcm_enet_priv {int /*<<< orphan*/  napi; int /*<<< orphan*/  tx_chan; int /*<<< orphan*/  rx_chan; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC1 (struct bcm_enet_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct bcm_enet_priv* FUNC3 (struct net_device*) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *dev_id)
{
	struct net_device *dev;
	struct bcm_enet_priv *priv;

	dev = dev_id;
	priv = FUNC3(dev);

	/* mask rx/tx interrupts */
	FUNC1(priv, 0, FUNC0(priv->rx_chan));
	FUNC1(priv, 0, FUNC0(priv->tx_chan));

	FUNC2(&priv->napi);

	return IRQ_HANDLED;
}