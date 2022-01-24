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
typedef  int u64 ;

/* Variables and functions */
 int MCI_CTL2_CMCI_EN ; 
 int MCI_CTL2_CMCI_THRESHOLD_MASK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cmci_discover_lock ; 
 int /*<<< orphan*/  FUNC3 (int*) ; 
 int /*<<< orphan*/  mce_banks_owned ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 

void FUNC9(void)
{
	unsigned long flags;
	int i;
	int banks;
	u64 val;

	if (!FUNC3(&banks))
		return;
	FUNC5(&cmci_discover_lock, flags);
	for (i = 0; i < banks; i++) {
		if (!FUNC7(i, FUNC2(mce_banks_owned)))
			continue;
		/* Disable CMCI */
		FUNC4(FUNC0(i), val);
		val &= ~(MCI_CTL2_CMCI_EN|MCI_CTL2_CMCI_THRESHOLD_MASK);
		FUNC8(FUNC0(i), val);
		FUNC1(i, FUNC2(mce_banks_owned));
	}
	FUNC6(&cmci_discover_lock, flags);
}