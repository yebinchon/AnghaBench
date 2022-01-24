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
struct device {int dummy; } ;
struct net_device {struct device dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  tx_errors; } ;
struct emac_priv {TYPE_1__ net_dev_stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EMAC_DEF_TX_CH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EMAC_TXINTMASKSET ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct emac_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct emac_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct emac_priv*) ; 
 int /*<<< orphan*/  FUNC6 (struct emac_priv*) ; 
 int /*<<< orphan*/  FUNC7 (struct emac_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct emac_priv* FUNC9 (struct net_device*) ; 
 scalar_t__ FUNC10 (struct emac_priv*) ; 

__attribute__((used)) static void FUNC11(struct net_device *ndev)
{
	struct emac_priv *priv = FUNC9(ndev);
	struct device *emac_dev = &ndev->dev;

	if (FUNC10(priv))
		FUNC2(emac_dev, "DaVinci EMAC: xmit timeout, restarting TX");

	priv->net_dev_stats.tx_errors++;
	FUNC5(priv);
	FUNC7(priv, EMAC_DEF_TX_CH);
	FUNC3(priv, EMAC_DEF_TX_CH);
	FUNC4(priv, EMAC_DEF_TX_CH);
	FUNC8(FUNC1(0), 0);
	FUNC8(EMAC_TXINTMASKSET, FUNC0(EMAC_DEF_TX_CH));
	FUNC6(priv);
}