#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ platform_data; } ;
struct platform_device {int /*<<< orphan*/  id; TYPE_2__ dev; } ;
struct netxeth_platform_data {int /*<<< orphan*/  xcno; } ;
struct netx_eth_priv {TYPE_1__* xc; int /*<<< orphan*/  id; int /*<<< orphan*/  lock; int /*<<< orphan*/  sram_base; int /*<<< orphan*/  xmac_base; int /*<<< orphan*/  xpec_base; } ;
struct net_device {int /*<<< orphan*/  irq; } ;
struct TYPE_6__ {int /*<<< orphan*/  sram_base; int /*<<< orphan*/  xmac_base; int /*<<< orphan*/  xpec_base; int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  CARDNAME ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,TYPE_2__*) ; 
 struct net_device* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 struct netx_eth_priv* FUNC6 (struct net_device*) ; 
 int FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct platform_device*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 
 TYPE_1__* FUNC12 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(struct platform_device *pdev)
{
	struct netx_eth_priv *priv;
	struct net_device *ndev;
	struct netxeth_platform_data *pdata;
	int ret;

	ndev = FUNC2(sizeof (struct netx_eth_priv));
	if (!ndev) {
		FUNC11("%s: could not allocate device.\n", CARDNAME);
		ret = -ENOMEM;
		goto exit;
	}
	FUNC1(ndev, &pdev->dev);

	FUNC10(pdev, ndev);

	priv = FUNC6(ndev);

	pdata = (struct netxeth_platform_data *)pdev->dev.platform_data;
	priv->xc = FUNC12(pdata->xcno, &pdev->dev);
	if (!priv->xc) {
		FUNC3(&pdev->dev, "unable to request xc engine\n");
		ret = -ENODEV;
		goto exit_free_netdev;
	}

	ndev->irq = priv->xc->irq;
	priv->id = pdev->id;
	priv->xpec_base = priv->xc->xpec_base;
	priv->xmac_base = priv->xc->xmac_base;
	priv->sram_base = priv->xc->sram_base;

	FUNC13(&priv->lock);

	ret = FUNC9(FUNC0(priv->id));
	if (ret) {
		FUNC11("unable to request PFIFO\n");
		goto exit_free_xc;
	}

	ret = FUNC7(ndev);
	if (ret)
		goto exit_free_pfifo;

	return 0;
exit_free_pfifo:
	FUNC8(FUNC0(priv->id));
exit_free_xc:
	FUNC5(priv->xc);
exit_free_netdev:
	FUNC10(pdev, NULL);
	FUNC4(ndev);
exit:
	return ret;
}