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
struct net_device {int dummy; } ;
struct ethtool_wolinfo {int wolopts; } ;
struct be_adapter {int wol; TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int WAKE_MAGIC ; 
 int /*<<< orphan*/  FUNC0 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 struct be_adapter* FUNC2 (struct net_device*) ; 

__attribute__((used)) static int
FUNC3(struct net_device *netdev, struct ethtool_wolinfo *wol)
{
	struct be_adapter *adapter = FUNC2(netdev);

	if (wol->wolopts & ~WAKE_MAGIC)
		return -EOPNOTSUPP;

	if (!FUNC0(adapter)) {
		FUNC1(&adapter->pdev->dev, "WOL not supported\n");
		return -EOPNOTSUPP;
	}

	if (wol->wolopts & WAKE_MAGIC)
		adapter->wol = true;
	else
		adapter->wol = false;

	return 0;
}