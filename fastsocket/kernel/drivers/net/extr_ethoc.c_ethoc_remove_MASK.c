#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct platform_device {int dummy; } ;
struct net_device {int /*<<< orphan*/  mem_start; } ;
struct ethoc {int /*<<< orphan*/  membase; scalar_t__ dma_alloc; TYPE_1__* mdio; int /*<<< orphan*/ * phy; } ;
struct TYPE_3__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 struct ethoc* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct net_device* FUNC7 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct platform_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev)
{
	struct net_device *netdev = FUNC7(pdev);
	struct ethoc *priv = FUNC5(netdev);

	FUNC8(pdev, NULL);

	if (netdev) {
		FUNC6(priv->phy);
		priv->phy = NULL;

		if (priv->mdio) {
			FUNC4(priv->mdio);
			FUNC2(priv->mdio->irq);
			FUNC3(priv->mdio);
		}
		if (priv->dma_alloc)
			FUNC0(NULL, priv->dma_alloc, priv->membase,
				netdev->mem_start);
		FUNC9(netdev);
		FUNC1(netdev);
	}

	return 0;
}