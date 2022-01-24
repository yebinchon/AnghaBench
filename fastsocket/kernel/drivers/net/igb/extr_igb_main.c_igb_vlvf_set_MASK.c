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
typedef  scalar_t__ u32 ;
struct TYPE_3__ {scalar_t__ type; } ;
struct e1000_hw {TYPE_1__ mac; } ;
struct igb_adapter {scalar_t__ vfs_allocated_count; TYPE_2__* vf_data; struct e1000_hw hw; } ;
typedef  int s32 ;
struct TYPE_4__ {int /*<<< orphan*/  vlans_enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ E1000_VLVF_ARRAY_SIZE ; 
 scalar_t__ E1000_VLVF_POOLSEL_MASK ; 
 scalar_t__ E1000_VLVF_POOLSEL_SHIFT ; 
 scalar_t__ E1000_VLVF_VLANID_ENABLE ; 
 scalar_t__ E1000_VLVF_VLANID_MASK ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ E1000_VMOLR_RLPML_MASK ; 
 scalar_t__ e1000_82576 ; 
 int /*<<< orphan*/  FUNC2 (struct e1000_hw*,scalar_t__,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static s32 FUNC5(struct igb_adapter *adapter, u32 vid, bool add, u32 vf)
{
	struct e1000_hw *hw = &adapter->hw;
	u32 reg, i;

	/* The vlvf table only exists on 82576 hardware and newer */
	if (hw->mac.type < e1000_82576)
		return -1;

	/* we only need to do this if VMDq is enabled */
	if (!adapter->vfs_allocated_count)
		return -1;

	/* Find the vlan filter for this id */
	for (i = 0; i < E1000_VLVF_ARRAY_SIZE; i++) {
		reg = FUNC3(FUNC0(i));
		if ((reg & E1000_VLVF_VLANID_ENABLE) &&
		    vid == (reg & E1000_VLVF_VLANID_MASK))
			break;
	}

	if (add) {
		if (i == E1000_VLVF_ARRAY_SIZE) {
			/* Did not find a matching VLAN ID entry that was
			 * enabled.  Search for a free filter entry, i.e.
			 * one without the enable bit set
			 */
			for (i = 0; i < E1000_VLVF_ARRAY_SIZE; i++) {
				reg = FUNC3(FUNC0(i));
				if (!(reg & E1000_VLVF_VLANID_ENABLE))
					break;
			}
		}
		if (i < E1000_VLVF_ARRAY_SIZE) {
			/* Found an enabled/available entry */
			reg |= 1 << (E1000_VLVF_POOLSEL_SHIFT + vf);

			/* if !enabled we need to set this up in vfta */
			if (!(reg & E1000_VLVF_VLANID_ENABLE)) {
				/* add VID to filter table */
				FUNC2(hw, vid, true);
				reg |= E1000_VLVF_VLANID_ENABLE;
			}
			reg &= ~E1000_VLVF_VLANID_MASK;
			reg |= vid;
			FUNC4(FUNC0(i), reg);

			/* do not modify RLPML for PF devices */
			if (vf >= adapter->vfs_allocated_count)
				return 0;

			if (!adapter->vf_data[vf].vlans_enabled) {
				u32 size;
				reg = FUNC3(FUNC1(vf));
				size = reg & E1000_VMOLR_RLPML_MASK;
				size += 4;
				reg &= ~E1000_VMOLR_RLPML_MASK;
				reg |= size;
				FUNC4(FUNC1(vf), reg);
			}

			adapter->vf_data[vf].vlans_enabled++;
		}
	} else {
		if (i < E1000_VLVF_ARRAY_SIZE) {
			/* remove vf from the pool */
			reg &= ~(1 << (E1000_VLVF_POOLSEL_SHIFT + vf));
			/* if pool is empty then remove entry from vfta */
			if (!(reg & E1000_VLVF_POOLSEL_MASK)) {
				reg = 0;
				FUNC2(hw, vid, false);
			}
			FUNC4(FUNC0(i), reg);

			/* do not modify RLPML for PF devices */
			if (vf >= adapter->vfs_allocated_count)
				return 0;

			adapter->vf_data[vf].vlans_enabled--;
			if (!adapter->vf_data[vf].vlans_enabled) {
				u32 size;
				reg = FUNC3(FUNC1(vf));
				size = reg & E1000_VMOLR_RLPML_MASK;
				size -= 4;
				reg &= ~E1000_VMOLR_RLPML_MASK;
				reg |= size;
				FUNC4(FUNC1(vf), reg);
			}
		}
	}
	return 0;
}