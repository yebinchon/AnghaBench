#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct qlcnic_adapter {TYPE_2__* ahw; TYPE_1__* pdev; } ;
struct TYPE_4__ {int /*<<< orphan*/  link_autoneg; int /*<<< orphan*/  port_config; int /*<<< orphan*/  port_type; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUTONEG_ENABLE ; 
 int /*<<< orphan*/  QLCNIC_GBE ; 
 int /*<<< orphan*/  QLCNIC_XGBE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int FUNC3 (struct qlcnic_adapter*) ; 

int FUNC4(struct qlcnic_adapter *adapter)
{
	int status;

	status = FUNC3(adapter);
	if (status) {
		FUNC2(&adapter->pdev->dev,
			"Get Port Info failed\n");
	} else {
		if (FUNC1(adapter->ahw->port_config))
			adapter->ahw->port_type = QLCNIC_XGBE;
		else
			adapter->ahw->port_type = QLCNIC_GBE;

		if (FUNC0(adapter->ahw->port_config))
			adapter->ahw->link_autoneg = AUTONEG_ENABLE;
	}
	return status;
}