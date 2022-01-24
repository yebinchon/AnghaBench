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
struct ixgbe_hw {scalar_t__ adapter_stopped; } ;
struct ixgbevf_adapter {int /*<<< orphan*/  state; int /*<<< orphan*/  num_msix_vectors; struct ixgbe_hw hw; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENOMEM ; 
 int IXGBE_ERR_MBX ; 
 int /*<<< orphan*/  FUNC0 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IXGBE_VTEICR ; 
 int /*<<< orphan*/  __IXGBEVF_TESTING ; 
 int /*<<< orphan*/  FUNC1 (struct ixgbevf_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbevf_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct ixgbevf_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct ixgbevf_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct ixgbevf_adapter*) ; 
 int /*<<< orphan*/  FUNC6 (struct ixgbevf_adapter*) ; 
 int FUNC7 (struct ixgbevf_adapter*) ; 
 int /*<<< orphan*/  FUNC8 (struct ixgbevf_adapter*) ; 
 int FUNC9 (struct ixgbevf_adapter*) ; 
 int FUNC10 (struct ixgbevf_adapter*) ; 
 int FUNC11 (struct ixgbevf_adapter*) ; 
 int /*<<< orphan*/  FUNC12 (struct ixgbevf_adapter*) ; 
 struct ixgbevf_adapter* FUNC13 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC16(struct net_device *netdev)
{
	struct ixgbevf_adapter *adapter = FUNC13(netdev);
	struct ixgbe_hw *hw = &adapter->hw;
	int err;

	/* A previous failure to open the device because of a lack of
	 * available MSIX vector resources may have reset the number
	 * of msix vectors variable to zero.  The only way to recover
	 * is to unload/reload the driver and hope that the system has
	 * been able to recover some MSIX vector resources.
	 */
	if (!adapter->num_msix_vectors)
		return -ENOMEM;

	/* disallow open during test */
	if (FUNC15(__IXGBEVF_TESTING, &adapter->state))
		return -EBUSY;

	if (hw->adapter_stopped) {
		FUNC8(adapter);
		/* if adapter is still stopped then PF isn't up and
		 * the vf can't start. */
		if (hw->adapter_stopped) {
			err = IXGBE_ERR_MBX;
			FUNC14("Unable to start - perhaps the PF Driver isn't "
			       "up yet\n");
			goto err_setup_reset;
		}
	}

	/* setup queue reg_idx and Rx queue count */
	err = FUNC11(adapter);
	if (err)
		goto err_setup_queues;

	/* allocate transmit descriptors */
	err = FUNC10(adapter);
	if (err)
		goto err_setup_tx;

	/* allocate receive descriptors */
	err = FUNC9(adapter);
	if (err)
		goto err_setup_rx;

	FUNC1(adapter);

	/*
	 * Map the Tx/Rx rings to the vectors we were allotted.
	 * if request_irq will be called in this function map_rings
	 * must be called *before* up_complete
	 */
	FUNC6(adapter);

	FUNC12(adapter);

	/* clear any pending interrupts, may auto mask */
	FUNC0(hw, IXGBE_VTEICR);
	err = FUNC7(adapter);
	if (err)
		goto err_req_irq;

	FUNC5(adapter);

	return 0;

err_req_irq:
	FUNC2(adapter);
err_setup_rx:
	FUNC3(adapter);
err_setup_tx:
	FUNC4(adapter);
err_setup_queues:
	FUNC8(adapter);

err_setup_reset:

	return err;
}