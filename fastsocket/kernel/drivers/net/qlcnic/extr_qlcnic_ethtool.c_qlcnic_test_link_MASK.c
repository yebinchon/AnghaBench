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
struct qlcnic_adapter {TYPE_1__* ahw; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  pci_func; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRB_XG_STATE_P3P ; 
 int FUNC0 (struct qlcnic_adapter*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int XG_LINK_UP_P3P ; 
 struct qlcnic_adapter* FUNC2 (struct net_device*) ; 
 scalar_t__ FUNC3 (struct qlcnic_adapter*) ; 
 int FUNC4 (struct qlcnic_adapter*) ; 

__attribute__((used)) static u32 FUNC5(struct net_device *dev)
{
	struct qlcnic_adapter *adapter = FUNC2(dev);
	u32 val;

	if (FUNC3(adapter)) {
		val = FUNC4(adapter);
		return (val & 1) ? 0 : 1;
	}
	val = FUNC0(adapter, CRB_XG_STATE_P3P);
	val = FUNC1(adapter->ahw->pci_func, val);
	return (val == XG_LINK_UP_P3P) ? 0 : 1;
}