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
typedef  int u64 ;
typedef  int u32 ;
struct net_device {int /*<<< orphan*/  name; } ;
struct ixgbe_adapter {int flags; int test_icr; int /*<<< orphan*/  hw; scalar_t__ msix_entries; TYPE_1__* pdev; struct net_device* netdev; } ;
struct TYPE_2__ {int irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQF_PROBE_SHARED ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  IXGBE_EICS ; 
 int /*<<< orphan*/  IXGBE_EIMC ; 
 int /*<<< orphan*/  IXGBE_EIMS ; 
 int IXGBE_FLAG_MSI_ENABLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int,struct net_device*) ; 
 int /*<<< orphan*/  hw ; 
 int /*<<< orphan*/  ixgbe_test_intr ; 
 scalar_t__ FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 

__attribute__((used)) static int FUNC6(struct ixgbe_adapter *adapter, u64 *data)
{
	struct net_device *netdev = adapter->netdev;
	u32 mask, i = 0, shared_int = true;
	u32 irq = adapter->pdev->irq;

	*data = 0;

	/* Hook up test interrupt handler just for this test */
	if (adapter->msix_entries) {
		/* NOTE: we don't test MSI-X interrupts here, yet */
		return 0;
	} else if (adapter->flags & IXGBE_FLAG_MSI_ENABLED) {
		shared_int = false;
		if (FUNC4(irq, ixgbe_test_intr, 0, netdev->name,
				netdev)) {
			*data = 1;
			return -1;
		}
	} else if (!FUNC4(irq, ixgbe_test_intr, IRQF_PROBE_SHARED,
	                        netdev->name, netdev)) {
		shared_int = false;
	} else if (FUNC4(irq, ixgbe_test_intr, IRQF_SHARED,
	                       netdev->name, netdev)) {
		*data = 1;
		return -1;
	}
	FUNC2(hw, "testing %s interrupt\n", shared_int ?
	       "shared" : "unshared");

	/* Disable all the interrupts */
	FUNC1(&adapter->hw, IXGBE_EIMC, 0xFFFFFFFF);
	FUNC0(&adapter->hw);
	FUNC5(10000, 20000);

	/* Test each interrupt */
	for (; i < 10; i++) {
		/* Interrupt to test */
		mask = 1 << i;

		if (!shared_int) {
			/*
			 * Disable the interrupts to be reported in
			 * the cause register and then force the same
			 * interrupt and see if one gets posted.  If
			 * an interrupt was posted to the bus, the
			 * test failed.
			 */
			adapter->test_icr = 0;
			FUNC1(&adapter->hw, IXGBE_EIMC,
			                ~mask & 0x00007FFF);
			FUNC1(&adapter->hw, IXGBE_EICS,
			                ~mask & 0x00007FFF);
			FUNC0(&adapter->hw);
			FUNC5(10000, 20000);

			if (adapter->test_icr & mask) {
				*data = 3;
				break;
			}
		}

		/*
		 * Enable the interrupt to be reported in the cause
		 * register and then force the same interrupt and see
		 * if one gets posted.  If an interrupt was not posted
		 * to the bus, the test failed.
		 */
		adapter->test_icr = 0;
		FUNC1(&adapter->hw, IXGBE_EIMS, mask);
		FUNC1(&adapter->hw, IXGBE_EICS, mask);
		FUNC0(&adapter->hw);
		FUNC5(10000, 20000);

		if (!(adapter->test_icr &mask)) {
			*data = 4;
			break;
		}

		if (!shared_int) {
			/*
			 * Disable the other interrupts to be reported in
			 * the cause register and then force the other
			 * interrupts and see if any get posted.  If
			 * an interrupt was posted to the bus, the
			 * test failed.
			 */
			adapter->test_icr = 0;
			FUNC1(&adapter->hw, IXGBE_EIMC,
			                ~mask & 0x00007FFF);
			FUNC1(&adapter->hw, IXGBE_EICS,
			                ~mask & 0x00007FFF);
			FUNC0(&adapter->hw);
			FUNC5(10000, 20000);

			if (adapter->test_icr) {
				*data = 5;
				break;
			}
		}
	}

	/* Disable all the interrupts */
	FUNC1(&adapter->hw, IXGBE_EIMC, 0xFFFFFFFF);
	FUNC0(&adapter->hw);
	FUNC5(10000, 20000);

	/* Unhook test interrupt handler */
	FUNC3(irq, netdev);

	return *data;
}