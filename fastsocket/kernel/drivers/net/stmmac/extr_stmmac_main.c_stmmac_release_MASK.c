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
struct stmmac_priv {int /*<<< orphan*/  rx_recycle; int /*<<< orphan*/  napi; int /*<<< orphan*/ * tm; int /*<<< orphan*/ * phydev; } ;
struct net_device {int /*<<< orphan*/  base_addr; int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct stmmac_priv*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct stmmac_priv* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15(struct net_device *dev)
{
	struct stmmac_priv *priv = FUNC4(dev);

	/* Stop and disconnect the PHY */
	if (priv->phydev) {
		FUNC8(priv->phydev);
		FUNC7(priv->phydev);
		priv->phydev = NULL;
	}

	FUNC6(dev);

#ifdef CONFIG_STMMAC_TIMER
	/* Stop and release the timer */
	stmmac_close_ext_timer();
	if (priv->tm != NULL)
		kfree(priv->tm);
#endif
	FUNC3(&priv->napi);
	FUNC9(&priv->rx_recycle);

	/* Free the IRQ lines */
	FUNC1(dev->irq, dev);

	/* Stop TX/RX DMA and clear the descriptors */
	FUNC12(dev->base_addr);
	FUNC11(dev->base_addr);

	/* Release and free the Rx/Tx resources */
	FUNC0(priv);

	/* Disable the MAC core */
	FUNC14(dev->base_addr);
	FUNC13(dev->base_addr);

	FUNC5(dev);

	return 0;
}