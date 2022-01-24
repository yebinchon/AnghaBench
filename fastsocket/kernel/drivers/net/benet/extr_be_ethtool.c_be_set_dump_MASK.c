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
struct ethtool_dump {int flag; } ;
struct device {int dummy; } ;
struct be_adapter {TYPE_1__* pdev; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int EOPNOTSUPP ; 
#define  LANCER_INITIATE_FW_DUMP 128 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 scalar_t__ FUNC2 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct be_adapter*) ; 
 int FUNC4 (struct be_adapter*) ; 
 struct be_adapter* FUNC5 (struct net_device*) ; 

__attribute__((used)) static int FUNC6(struct net_device *netdev, struct ethtool_dump *dump)
{
	struct be_adapter *adapter = FUNC5(netdev);
	struct device *dev = &adapter->pdev->dev;
	int status;

	if (!FUNC3(adapter)) {
		FUNC0(dev, "FW dump not supported\n");
		return -EOPNOTSUPP;
	}

	if (FUNC2(adapter)) {
		FUNC0(dev, "Previous dump not cleared, not forcing dump\n");
		return 0;
	}

	switch (dump->flag) {
	case LANCER_INITIATE_FW_DUMP:
		status = FUNC4(adapter);
		if (!status)
			FUNC1(dev, "F/w dump initiated successfully\n");
		break;
	default:
		FUNC0(dev, "Invalid dump level: 0x%x\n", dump->flag);
		return -EINVAL;
	}
	return status;
}