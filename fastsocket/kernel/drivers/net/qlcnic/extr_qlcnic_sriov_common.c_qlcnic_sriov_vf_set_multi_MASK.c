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
typedef  int /*<<< orphan*/  u16 ;
struct qlcnic_adapter {TYPE_2__* ahw; int /*<<< orphan*/  state; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {TYPE_1__* sriov; } ;
struct TYPE_3__ {int /*<<< orphan*/  vlan; } ;

/* Variables and functions */
 int /*<<< orphan*/  __QLCNIC_FW_ATTACHED ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int /*<<< orphan*/ ) ; 
 struct qlcnic_adapter* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct net_device *netdev)
{
	struct qlcnic_adapter *adapter = FUNC1(netdev);
	u16 vlan;

	if (!FUNC2(__QLCNIC_FW_ATTACHED, &adapter->state))
		return;

	vlan = adapter->ahw->sriov->vlan;
	FUNC0(netdev, vlan);
}