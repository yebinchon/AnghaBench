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
struct net_device {int dummy; } ;
struct be_adapter {int msg_enable; TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FW_LOG_LEVEL_DEFAULT ; 
 int /*<<< orphan*/  FW_LOG_LEVEL_FATAL ; 
 int NETIF_MSG_HW ; 
 int /*<<< orphan*/  FUNC0 (struct be_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC2 (struct be_adapter*) ; 
 struct be_adapter* FUNC3 (struct net_device*) ; 

__attribute__((used)) static void FUNC4(struct net_device *netdev, u32 level)
{
	struct be_adapter *adapter = FUNC3(netdev);

	if (FUNC2(adapter)) {
		FUNC1(&adapter->pdev->dev, "Operation not supported\n");
		return;
	}

	if (adapter->msg_enable == level)
		return;

	if ((level & NETIF_MSG_HW) != (adapter->msg_enable & NETIF_MSG_HW))
		FUNC0(adapter, level & NETIF_MSG_HW ?
				    FW_LOG_LEVEL_DEFAULT : FW_LOG_LEVEL_FATAL);
	adapter->msg_enable = level;

	return;
}