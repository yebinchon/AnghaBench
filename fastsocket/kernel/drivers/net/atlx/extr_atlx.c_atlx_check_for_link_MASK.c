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
typedef  int u16 ;
struct net_device {int /*<<< orphan*/  name; } ;
struct atlx_adapter {int phy_timer_pending; int /*<<< orphan*/  link_chg_task; int /*<<< orphan*/  link_speed; TYPE_1__* pdev; int /*<<< orphan*/  lock; int /*<<< orphan*/  hw; struct net_device* netdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int BMSR_LSTATUS ; 
 int /*<<< orphan*/  MII_BMSR ; 
 int /*<<< orphan*/  SPEED_0 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 scalar_t__ FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct atlx_adapter *adapter)
{
	struct net_device *netdev = adapter->netdev;
	u16 phy_data = 0;

	FUNC5(&adapter->lock);
	adapter->phy_timer_pending = false;
	FUNC0(&adapter->hw, MII_BMSR, &phy_data);
	FUNC0(&adapter->hw, MII_BMSR, &phy_data);
	FUNC6(&adapter->lock);

	/* notify upper layer link down ASAP */
	if (!(phy_data & BMSR_LSTATUS)) {
		/* Link Down */
		if (FUNC3(netdev)) {
			/* old link state: Up */
			FUNC1(&adapter->pdev->dev, "%s link is down\n",
				netdev->name);
			adapter->link_speed = SPEED_0;
			FUNC2(netdev);
		}
	}
	FUNC4(&adapter->link_chg_task);
}