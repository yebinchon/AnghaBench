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
typedef  int u32 ;
struct qlcnic_adapter {TYPE_1__* pdev; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int vendor; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct qlcnic_adapter*,int /*<<< orphan*/ ) ; 
 struct qlcnic_adapter* FUNC2 (struct net_device*) ; 
 scalar_t__ FUNC3 (struct qlcnic_adapter*) ; 
 int FUNC4 (struct qlcnic_adapter*) ; 

__attribute__((used)) static int FUNC5(struct net_device *dev)
{
	struct qlcnic_adapter *adapter = FUNC2(dev);
	u32 data_read;

	if (FUNC3(adapter))
		return FUNC4(adapter);

	data_read = FUNC1(adapter, FUNC0(0));
	if ((data_read & 0xffff) != adapter->pdev->vendor)
		return 1;

	return 0;
}