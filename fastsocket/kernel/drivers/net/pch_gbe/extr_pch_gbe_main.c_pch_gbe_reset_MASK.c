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
struct pch_gbe_adapter {int /*<<< orphan*/  hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCH_GBE_MAR_ENTRIES ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

void FUNC4(struct pch_gbe_adapter *adapter)
{
	FUNC2(&adapter->hw);
	/* Setup the receive address. */
	FUNC1(&adapter->hw, PCH_GBE_MAR_ENTRIES);
	if (FUNC0(&adapter->hw))
		FUNC3("Hardware Error\n");
}