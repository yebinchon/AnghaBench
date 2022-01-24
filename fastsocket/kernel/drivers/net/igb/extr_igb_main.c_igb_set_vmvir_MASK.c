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
typedef  int u32 ;
struct e1000_hw {int dummy; } ;
struct igb_adapter {struct e1000_hw hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int E1000_VMVIR_VLANA_DEFAULT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct igb_adapter *adapter, u32 vid, u32 vf)
{
	struct e1000_hw *hw = &adapter->hw;

	if (vid)
		FUNC1(FUNC0(vf), (vid | E1000_VMVIR_VLANA_DEFAULT));
	else
		FUNC1(FUNC0(vf), 0);
}