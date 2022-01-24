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
typedef  int u32 ;
struct e1000_hw {int dummy; } ;
struct igb_adapter {int eims_enable_mask; int num_q_vectors; TYPE_2__* pdev; TYPE_1__* msix_entries; struct e1000_hw hw; } ;
struct TYPE_4__ {int /*<<< orphan*/  irq; } ;
struct TYPE_3__ {int /*<<< orphan*/  vector; } ;

/* Variables and functions */
 int /*<<< orphan*/  E1000_EIAC ; 
 int /*<<< orphan*/  E1000_EIAM ; 
 int /*<<< orphan*/  E1000_EIMC ; 
 int /*<<< orphan*/  E1000_IAM ; 
 int /*<<< orphan*/  E1000_IMC ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void FUNC4(struct igb_adapter *adapter)
{
	struct e1000_hw *hw = &adapter->hw;

	/* we need to be careful when disabling interrupts.  The VFs are also
	 * mapped into these registers and so clearing the bits can cause
	 * issues on the VF drivers so we only need to clear what we set
	 */
	if (adapter->msix_entries) {
		u32 regval = FUNC0(E1000_EIAM);
		FUNC2(E1000_EIAM, regval & ~adapter->eims_enable_mask);
		FUNC2(E1000_EIMC, adapter->eims_enable_mask);
		regval = FUNC0(E1000_EIAC);
		FUNC2(E1000_EIAC, regval & ~adapter->eims_enable_mask);
	}

	FUNC2(E1000_IAM, 0);
	FUNC2(E1000_IMC, ~0);
	FUNC3();
	if (adapter->msix_entries) {
		int i;
		for (i = 0; i < adapter->num_q_vectors; i++)
			FUNC1(adapter->msix_entries[i].vector);
	} else {
		FUNC1(adapter->pdev->irq);
	}
}