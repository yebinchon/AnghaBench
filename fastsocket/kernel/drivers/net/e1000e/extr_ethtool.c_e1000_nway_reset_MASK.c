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
struct net_device {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  autoneg; } ;
struct TYPE_4__ {TYPE_1__ mac; } ;
struct e1000_adapter {TYPE_2__ hw; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct e1000_adapter*) ; 
 struct e1000_adapter* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 

__attribute__((used)) static int FUNC3(struct net_device *netdev)
{
	struct e1000_adapter *adapter = FUNC1(netdev);

	if (!FUNC2(netdev))
		return -EAGAIN;

	if (!adapter->hw.mac.autoneg)
		return -EINVAL;

	FUNC0(adapter);

	return 0;
}