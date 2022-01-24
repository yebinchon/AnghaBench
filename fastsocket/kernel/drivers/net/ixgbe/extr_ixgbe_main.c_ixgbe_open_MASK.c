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
struct net_device {int dummy; } ;
struct ixgbe_adapter {int num_rx_pools; int num_tx_queues; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  __IXGBE_TESTING ; 
 int /*<<< orphan*/  FUNC0 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct ixgbe_adapter*) ; 
 int FUNC4 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct ixgbe_adapter*) ; 
 int FUNC6 (struct ixgbe_adapter*) ; 
 int FUNC7 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  FUNC8 (struct ixgbe_adapter*) ; 
 struct ixgbe_adapter* FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*,int) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(struct net_device *netdev)
{
	struct ixgbe_adapter *adapter = FUNC9(netdev);
	int err;

	/* disallow open during test */
	if (FUNC12(__IXGBE_TESTING, &adapter->state))
		return -EBUSY;

	FUNC10(netdev);

	/* allocate transmit descriptors */
	err = FUNC7(adapter);
	if (err)
		goto err_setup_tx;

	/* allocate receive descriptors */
	err = FUNC6(adapter);
	if (err)
		goto err_setup_rx;

	FUNC0(adapter);

	err = FUNC4(adapter);
	if (err)
		goto err_req_irq;

	/* Notify the stack of the actual queue counts. */
	FUNC11(netdev,
				     adapter->num_rx_pools > 1 ? 1 :
				     adapter->num_tx_queues);

#ifdef CONFIG_IXGBE_PTP
	ixgbe_ptp_init(adapter);
#endif /* CONFIG_IXGBE_PTP*/

	FUNC8(adapter);

	return 0;

err_req_irq:
	FUNC1(adapter);
err_setup_rx:
	FUNC2(adapter);
err_setup_tx:
	FUNC5(adapter);

	return err;
}