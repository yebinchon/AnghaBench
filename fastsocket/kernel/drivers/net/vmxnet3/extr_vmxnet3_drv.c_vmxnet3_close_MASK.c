#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct vmxnet3_adapter {int /*<<< orphan*/  state; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  VMXNET3_STATE_BIT_RESETTING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct vmxnet3_adapter* FUNC2 (struct net_device*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct vmxnet3_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct vmxnet3_adapter*) ; 
 int /*<<< orphan*/  FUNC6 (struct vmxnet3_adapter*) ; 

__attribute__((used)) static int
FUNC7(struct net_device *netdev)
{
	struct vmxnet3_adapter *adapter = FUNC2(netdev);

	/*
	 * Reset_work may be in the middle of resetting the device, wait for its
	 * completion.
	 */
	while (FUNC3(VMXNET3_STATE_BIT_RESETTING, &adapter->state))
		FUNC1(1);

	FUNC4(adapter);

	FUNC5(adapter);
	FUNC6(adapter);

	FUNC0(VMXNET3_STATE_BIT_RESETTING, &adapter->state);


	return 0;
}