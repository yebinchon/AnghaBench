#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int n_hwmon; scalar_t__ device; TYPE_3__* hwmon_list; } ;
struct ixgbe_adapter {TYPE_2__ ixgbe_hwmon_buff; TYPE_1__* pdev; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev_attr; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 

__attribute__((used)) static void FUNC3(struct ixgbe_adapter *adapter)
{
	int i;

	if (adapter == NULL)
		return;

	for (i = 0; i < adapter->ixgbe_hwmon_buff.n_hwmon; i++) {
		FUNC0(&adapter->pdev->dev,
			   &adapter->ixgbe_hwmon_buff.hwmon_list[i].dev_attr);
	}

	FUNC2(adapter->ixgbe_hwmon_buff.hwmon_list);

	if (adapter->ixgbe_hwmon_buff.device)
		FUNC1(adapter->ixgbe_hwmon_buff.device);
}