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
struct pch_gbe_hw {int dummy; } ;
struct pch_gbe_adapter {int /*<<< orphan*/  tx_ring; int /*<<< orphan*/  rx_ring; int /*<<< orphan*/  wake_up_evt; struct pch_gbe_hw hw; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 struct pch_gbe_adapter* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct pch_gbe_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pch_gbe_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pch_gbe_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct pch_gbe_hw*) ; 
 int /*<<< orphan*/  FUNC5 (struct pch_gbe_adapter*) ; 
 int FUNC6 (struct pch_gbe_adapter*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct pch_gbe_adapter*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct pch_gbe_adapter*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

__attribute__((used)) static int FUNC11(struct net_device *netdev)
{
	struct pch_gbe_adapter *adapter = FUNC0(netdev);
	struct pch_gbe_hw *hw = &adapter->hw;
	int err;

	/* allocate transmit descriptors */
	err = FUNC7(adapter, adapter->tx_ring);
	if (err)
		goto err_setup_tx;
	/* allocate receive descriptors */
	err = FUNC6(adapter, adapter->rx_ring);
	if (err)
		goto err_setup_rx;
	FUNC4(hw);
	err = FUNC8(adapter);
	if (err)
		goto err_up;
	FUNC9("Success End\n");
	return 0;

err_up:
	if (!adapter->wake_up_evt)
		FUNC3(hw);
	FUNC1(adapter, adapter->rx_ring);
err_setup_rx:
	FUNC2(adapter, adapter->tx_ring);
err_setup_tx:
	FUNC5(adapter);
	FUNC10("Error End\n");
	return err;
}