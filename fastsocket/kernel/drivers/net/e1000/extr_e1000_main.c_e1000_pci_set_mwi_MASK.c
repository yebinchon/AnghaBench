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
struct e1000_hw {struct e1000_adapter* back; } ;
struct e1000_adapter {int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  probe ; 

void FUNC2(struct e1000_hw *hw)
{
	struct e1000_adapter *adapter = hw->back;
	int ret_val = FUNC1(adapter->pdev);

	if (ret_val)
		FUNC0(probe, "Error in setting MWI\n");
}