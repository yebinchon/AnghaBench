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
typedef  int u32 ;
struct e1000_hw {int dummy; } ;
struct igb_adapter {TYPE_1__* vf_data; struct e1000_hw hw; } ;
struct TYPE_2__ {scalar_t__ vlans_enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int E1000_VLVF_ARRAY_SIZE ; 
 int E1000_VLVF_POOLSEL_MASK ; 
 int E1000_VLVF_POOLSEL_SHIFT ; 
 int E1000_VLVF_VLANID_ENABLE ; 
 int E1000_VLVF_VLANID_MASK ; 
 int /*<<< orphan*/  FUNC1 (struct e1000_hw*,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct igb_adapter *adapter, u32 vf)
{
	struct e1000_hw *hw = &adapter->hw;
	u32 pool_mask, reg, vid;
	int i;

	pool_mask = 1 << (E1000_VLVF_POOLSEL_SHIFT + vf);

	/* Find the vlan filter for this id */
	for (i = 0; i < E1000_VLVF_ARRAY_SIZE; i++) {
		reg = FUNC2(FUNC0(i));

		/* remove the vf from the pool */
		reg &= ~pool_mask;

		/* if pool is empty then remove entry from vfta */
		if (!(reg & E1000_VLVF_POOLSEL_MASK) &&
		    (reg & E1000_VLVF_VLANID_ENABLE)) {
			reg = 0;
			vid = reg & E1000_VLVF_VLANID_MASK;
			FUNC1(hw, vid, false);
		}

		FUNC3(FUNC0(i), reg);
	}

	adapter->vf_data[vf].vlans_enabled = 0;
}