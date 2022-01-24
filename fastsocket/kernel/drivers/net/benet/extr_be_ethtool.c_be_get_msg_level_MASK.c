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
typedef  int /*<<< orphan*/  u32 ;
struct net_device {int dummy; } ;
struct be_adapter {int /*<<< orphan*/  msg_enable; TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC1 (struct be_adapter*) ; 
 struct be_adapter* FUNC2 (struct net_device*) ; 

__attribute__((used)) static u32 FUNC3(struct net_device *netdev)
{
	struct be_adapter *adapter = FUNC2(netdev);

	if (FUNC1(adapter)) {
		FUNC0(&adapter->pdev->dev, "Operation not supported\n");
		return -EOPNOTSUPP;
	}

	return adapter->msg_enable;
}