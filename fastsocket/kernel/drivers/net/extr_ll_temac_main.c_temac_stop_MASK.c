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
struct temac_local {int /*<<< orphan*/ * phy_dev; int /*<<< orphan*/  rx_irq; int /*<<< orphan*/  tx_irq; } ;
struct net_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct net_device*) ; 
 struct temac_local* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct net_device *ndev)
{
	struct temac_local *lp = FUNC2(ndev);

	FUNC0(&ndev->dev, "temac_close()\n");

	FUNC1(lp->tx_irq, ndev);
	FUNC1(lp->rx_irq, ndev);

	if (lp->phy_dev)
		FUNC3(lp->phy_dev);
	lp->phy_dev = NULL;

	return 0;
}