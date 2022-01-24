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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct vmxnet3_adapter {int /*<<< orphan*/  cmd_lock; TYPE_3__* shared; } ;
struct net_device {int flags; } ;
struct TYPE_4__ {int /*<<< orphan*/ * vfTable; } ;
struct TYPE_5__ {TYPE_1__ rxFilterConf; } ;
struct TYPE_6__ {TYPE_2__ devRead; } ;

/* Variables and functions */
 int IFF_PROMISC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VMXNET3_CMD_UPDATE_VLAN_FILTERS ; 
 int /*<<< orphan*/  VMXNET3_REG_CMD ; 
 int /*<<< orphan*/  FUNC1 (struct vmxnet3_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct vmxnet3_adapter* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void
FUNC5(struct net_device *netdev, u16 vid)
{
	struct vmxnet3_adapter *adapter = FUNC2(netdev);

	if (!(netdev->flags & IFF_PROMISC)) {
		u32 *vfTable = adapter->shared->devRead.rxFilterConf.vfTable;
		unsigned long flags;

		FUNC0(vfTable, vid);
		FUNC3(&adapter->cmd_lock, flags);
		FUNC1(adapter, VMXNET3_REG_CMD,
				       VMXNET3_CMD_UPDATE_VLAN_FILTERS);
		FUNC4(&adapter->cmd_lock, flags);
	}

}