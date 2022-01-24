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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int type; } ;
struct e1000_hw {TYPE_1__ mac; } ;
struct igb_adapter {int /*<<< orphan*/  vfs_allocated_count; struct e1000_hw hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  E1000_DTXCTL ; 
 int /*<<< orphan*/  E1000_DTXCTL_VLAN_ADDED ; 
 int /*<<< orphan*/  E1000_RPLOLR ; 
 int /*<<< orphan*/  E1000_RPLOLR_STRVLAN ; 
#define  e1000_82575 134 
#define  e1000_82576 133 
#define  e1000_82580 132 
#define  e1000_i210 131 
#define  e1000_i211 130 
#define  e1000_i350 129 
#define  e1000_i354 128 
 int /*<<< orphan*/  FUNC0 (struct e1000_hw*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct e1000_hw*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct e1000_hw*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct igb_adapter *adapter)
{
	struct e1000_hw *hw = &adapter->hw;
	u32 reg;

	switch (hw->mac.type) {
	case e1000_82575:
	case e1000_i210:
	case e1000_i211:
	case e1000_i354:
	default:
		/* replication is not supported for 82575 */
		return;
	case e1000_82576:
		/* notify HW that the MAC is adding vlan tags */
		reg = FUNC3(E1000_DTXCTL);
		reg |= E1000_DTXCTL_VLAN_ADDED;
		FUNC4(E1000_DTXCTL, reg);
	case e1000_82580:
		/* enable replication vlan tag stripping */
		reg = FUNC3(E1000_RPLOLR);
		reg |= E1000_RPLOLR_STRVLAN;
		FUNC4(E1000_RPLOLR, reg);
	case e1000_i350:
		/* none of the above registers are supported by i350 */
		break;
	}

	if (adapter->vfs_allocated_count) {
		FUNC1(hw, true);
		FUNC2(hw, true);
		FUNC0(hw, true,
					      adapter->vfs_allocated_count);
	} else {
		FUNC1(hw, false);
		FUNC2(hw, false);
	}
}