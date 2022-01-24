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
struct resource {int start; int end; } ;
struct device {int dummy; } ;
struct net_device {int /*<<< orphan*/  name; struct device dev; } ;
struct emac_priv {int /*<<< orphan*/  ndev; int /*<<< orphan*/  pdev; scalar_t__ phydev; int /*<<< orphan*/  napi; } ;

/* Variables and functions */
 int /*<<< orphan*/  EMAC_DEF_RX_CH ; 
 int /*<<< orphan*/  EMAC_DEF_TX_CH ; 
 int /*<<< orphan*/  EMAC_SOFTRESET ; 
 int /*<<< orphan*/  IORESOURCE_IRQ ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct emac_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct emac_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct emac_priv*) ; 
 int /*<<< orphan*/  FUNC4 (struct emac_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct emac_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 struct emac_priv* FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 
 scalar_t__ FUNC11 (struct emac_priv*) ; 
 int /*<<< orphan*/  FUNC12 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__) ; 
 struct resource* FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC15(struct net_device *ndev)
{
	struct resource *res;
	int i = 0;
	int irq_num;
	struct emac_priv *priv = FUNC9(ndev);
	struct device *emac_dev = &ndev->dev;

	/* inform the upper layers. */
	FUNC12(ndev);
	FUNC8(&priv->napi);

	FUNC10(ndev);
	FUNC3(priv);
	FUNC5(priv, EMAC_DEF_TX_CH);
	FUNC4(priv, EMAC_DEF_RX_CH);
	FUNC2(priv, EMAC_DEF_TX_CH);
	FUNC1(priv, EMAC_DEF_RX_CH);
	FUNC6(EMAC_SOFTRESET, 1);

	if (priv->phydev)
		FUNC13(priv->phydev);

	/* Free IRQ */
	while ((res = FUNC14(priv->pdev, IORESOURCE_IRQ, i))) {
		for (irq_num = res->start; irq_num <= res->end; irq_num++)
			FUNC7(irq_num, priv->ndev);
		i++;
	}

	if (FUNC11(priv))
		FUNC0(emac_dev, "DaVinci EMAC: %s stopped\n", ndev->name);

	return 0;
}