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
struct vmxnet3_adapter {int /*<<< orphan*/  state; int /*<<< orphan*/  jumbo_frame; } ;
struct net_device {int mtu; } ;

/* Variables and functions */
 int EINVAL ; 
 int VMXNET3_MAX_MTU ; 
 int VMXNET3_MIN_MTU ; 
 int /*<<< orphan*/  VMXNET3_STATE_BIT_RESETTING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,char*,int) ; 
 struct vmxnet3_adapter* FUNC3 (struct net_device*) ; 
 scalar_t__ FUNC4 (struct net_device*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct vmxnet3_adapter*) ; 
 int /*<<< orphan*/  FUNC7 (struct vmxnet3_adapter*) ; 
 int /*<<< orphan*/  FUNC8 (struct vmxnet3_adapter*) ; 
 int /*<<< orphan*/  FUNC9 (struct vmxnet3_adapter*) ; 
 int /*<<< orphan*/  FUNC10 (struct vmxnet3_adapter*) ; 
 int FUNC11 (struct vmxnet3_adapter*) ; 
 int /*<<< orphan*/  FUNC12 (struct vmxnet3_adapter*) ; 

__attribute__((used)) static int
FUNC13(struct net_device *netdev, int new_mtu)
{
	struct vmxnet3_adapter *adapter = FUNC3(netdev);
	int err = 0;

	if (new_mtu < VMXNET3_MIN_MTU || new_mtu > VMXNET3_MAX_MTU)
		return -EINVAL;

	if (new_mtu > 1500 && !adapter->jumbo_frame)
		return -EINVAL;

	netdev->mtu = new_mtu;

	/*
	 * Reset_work may be in the middle of resetting the device, wait for its
	 * completion.
	 */
	while (FUNC5(VMXNET3_STATE_BIT_RESETTING, &adapter->state))
		FUNC1(1);

	if (FUNC4(netdev)) {
		FUNC9(adapter);
		FUNC10(adapter);

		/* we need to re-create the rx queue based on the new mtu */
		FUNC12(adapter);
		FUNC7(adapter);
		err = FUNC11(adapter);
		if (err) {
			FUNC2(netdev,
				   "failed to re-create rx queues, "
				   " error %d. Closing it.\n", err);
			goto out;
		}

		err = FUNC6(adapter);
		if (err) {
			FUNC2(netdev,
				   "failed to re-activate, error %d. "
				   "Closing it\n", err);
			goto out;
		}
	}

out:
	FUNC0(VMXNET3_STATE_BIT_RESETTING, &adapter->state);
	if (err)
		FUNC8(adapter);

	return err;
}