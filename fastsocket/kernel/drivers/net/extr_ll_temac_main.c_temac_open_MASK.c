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
struct temac_local {int /*<<< orphan*/  dev; int /*<<< orphan*/ * phy_dev; int /*<<< orphan*/  tx_irq; int /*<<< orphan*/  rx_irq; scalar_t__ phy_node; int /*<<< orphan*/  ndev; } ;
struct net_device {int /*<<< orphan*/  name; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  ll_temac_rx_irq ; 
 int /*<<< orphan*/  ll_temac_tx_irq ; 
 struct temac_local* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  temac_adjust_link ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 

__attribute__((used)) static int FUNC9(struct net_device *ndev)
{
	struct temac_local *lp = FUNC3(ndev);
	int rc;

	FUNC0(&ndev->dev, "temac_open()\n");

	if (lp->phy_node) {
		lp->phy_dev = FUNC4(lp->ndev, lp->phy_node,
					     temac_adjust_link, 0, 0);
		if (!lp->phy_dev) {
			FUNC1(lp->dev, "of_phy_connect() failed\n");
			return -ENODEV;
		}

		FUNC6(lp->phy_dev);
	}

	rc = FUNC7(lp->tx_irq, ll_temac_tx_irq, 0, ndev->name, ndev);
	if (rc)
		goto err_tx_irq;
	rc = FUNC7(lp->rx_irq, ll_temac_rx_irq, 0, ndev->name, ndev);
	if (rc)
		goto err_rx_irq;

	FUNC8(ndev);
	return 0;

 err_rx_irq:
	FUNC2(lp->tx_irq, ndev);
 err_tx_irq:
	if (lp->phy_dev)
		FUNC5(lp->phy_dev);
	lp->phy_dev = NULL;
	FUNC1(lp->dev, "request_irq() failed\n");
	return rc;
}