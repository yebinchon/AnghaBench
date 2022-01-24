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
typedef  int u64 ;
typedef  int u32 ;
struct net_device {int /*<<< orphan*/  name; } ;
struct TYPE_4__ {int /*<<< orphan*/  type; } ;
struct e1000_hw {TYPE_2__ mac; } ;
struct e1000_adapter {int int_mode; int flags; int test_icr; struct e1000_hw hw; TYPE_1__* pdev; struct net_device* netdev; } ;
struct TYPE_3__ {int irq; } ;

/* Variables and functions */
 void* E1000E_INT_MODE_LEGACY ; 
 int E1000E_INT_MODE_MSIX ; 
#define  E1000_ICR_RXSEQ 128 
 int FLAG_IS_ICH ; 
 int /*<<< orphan*/  ICS ; 
 int /*<<< orphan*/  IMC ; 
 int /*<<< orphan*/  IMS ; 
 int /*<<< orphan*/  IRQF_PROBE_SHARED ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  e1000_ich8lan ; 
 int /*<<< orphan*/  e1000_ich9lan ; 
 int /*<<< orphan*/  e1000_test_intr ; 
 int /*<<< orphan*/  FUNC0 (struct e1000_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct e1000_adapter*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int,struct net_device*) ; 
 scalar_t__ FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 

__attribute__((used)) static int FUNC8(struct e1000_adapter *adapter, u64 *data)
{
	struct net_device *netdev = adapter->netdev;
	struct e1000_hw *hw = &adapter->hw;
	u32 mask;
	u32 shared_int = 1;
	u32 irq = adapter->pdev->irq;
	int i;
	int ret_val = 0;
	int int_mode = E1000E_INT_MODE_LEGACY;

	*data = 0;

	/* NOTE: we don't test MSI/MSI-X interrupts here, yet */
	if (adapter->int_mode == E1000E_INT_MODE_MSIX) {
		int_mode = adapter->int_mode;
		FUNC0(adapter);
		adapter->int_mode = E1000E_INT_MODE_LEGACY;
		FUNC1(adapter);
	}
	/* Hook up test interrupt handler just for this test */
	if (!FUNC6(irq, e1000_test_intr, IRQF_PROBE_SHARED, netdev->name,
			 netdev)) {
		shared_int = 0;
	} else if (FUNC6(irq, e1000_test_intr, IRQF_SHARED,
		 netdev->name, netdev)) {
		*data = 1;
		ret_val = -1;
		goto out;
	}
	FUNC3("testing %s interrupt\n", (shared_int ? "shared" : "unshared"));

	/* Disable all the interrupts */
	FUNC4(IMC, 0xFFFFFFFF);
	FUNC2();
	FUNC7(10000, 20000);

	/* Test each interrupt */
	for (i = 0; i < 10; i++) {
		/* Interrupt to test */
		mask = 1 << i;

		if (adapter->flags & FLAG_IS_ICH) {
			switch (mask) {
			case E1000_ICR_RXSEQ:
				continue;
			case 0x00000100:
				if (adapter->hw.mac.type == e1000_ich8lan ||
				    adapter->hw.mac.type == e1000_ich9lan)
					continue;
				break;
			default:
				break;
			}
		}

		if (!shared_int) {
			/* Disable the interrupt to be reported in
			 * the cause register and then force the same
			 * interrupt and see if one gets posted.  If
			 * an interrupt was posted to the bus, the
			 * test failed.
			 */
			adapter->test_icr = 0;
			FUNC4(IMC, mask);
			FUNC4(ICS, mask);
			FUNC2();
			FUNC7(10000, 20000);

			if (adapter->test_icr & mask) {
				*data = 3;
				break;
			}
		}

		/* Enable the interrupt to be reported in
		 * the cause register and then force the same
		 * interrupt and see if one gets posted.  If
		 * an interrupt was not posted to the bus, the
		 * test failed.
		 */
		adapter->test_icr = 0;
		FUNC4(IMS, mask);
		FUNC4(ICS, mask);
		FUNC2();
		FUNC7(10000, 20000);

		if (!(adapter->test_icr & mask)) {
			*data = 4;
			break;
		}

		if (!shared_int) {
			/* Disable the other interrupts to be reported in
			 * the cause register and then force the other
			 * interrupts and see if any get posted.  If
			 * an interrupt was posted to the bus, the
			 * test failed.
			 */
			adapter->test_icr = 0;
			FUNC4(IMC, ~mask & 0x00007FFF);
			FUNC4(ICS, ~mask & 0x00007FFF);
			FUNC2();
			FUNC7(10000, 20000);

			if (adapter->test_icr) {
				*data = 5;
				break;
			}
		}
	}

	/* Disable all the interrupts */
	FUNC4(IMC, 0xFFFFFFFF);
	FUNC2();
	FUNC7(10000, 20000);

	/* Unhook test interrupt handler */
	FUNC5(irq, netdev);

out:
	if (int_mode == E1000E_INT_MODE_MSIX) {
		FUNC0(adapter);
		adapter->int_mode = int_mode;
		FUNC1(adapter);
	}

	return ret_val;
}