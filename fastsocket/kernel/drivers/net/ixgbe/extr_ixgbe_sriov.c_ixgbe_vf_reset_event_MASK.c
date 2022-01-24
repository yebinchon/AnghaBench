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
typedef  int /*<<< orphan*/  u8 ;
typedef  size_t u32 ;
struct vf_data_storage {int /*<<< orphan*/  vf_api; scalar_t__ num_vf_mc_hashes; int /*<<< orphan*/  pf_vlan; scalar_t__ pf_qos; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* clear_rar ) (struct ixgbe_hw*,int) ;} ;
struct TYPE_4__ {size_t num_rar_entries; TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_2__ mac; } ;
struct ixgbe_adapter {struct vf_data_storage* vfinfo; int /*<<< orphan*/  netdev; scalar_t__ default_up; struct ixgbe_hw hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ixgbe_adapter*,size_t) ; 
 int /*<<< orphan*/  ixgbe_mbox_api_10 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbe_adapter*,int,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct ixgbe_hw*,size_t,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ixgbe_adapter*,int /*<<< orphan*/ ,scalar_t__,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ixgbe_hw*,int) ; 

__attribute__((used)) static inline void FUNC7(struct ixgbe_adapter *adapter, u32 vf)
{
	struct ixgbe_hw *hw = &adapter->hw;
	struct vf_data_storage *vfinfo = &adapter->vfinfo[vf];
	int rar_entry = hw->mac.num_rar_entries - (vf + 1);
	u8 num_tcs = FUNC5(adapter->netdev);

	/* add PF assigned VLAN or VLAN 0 */
	FUNC2(adapter, true, vfinfo->pf_vlan, vf);

	/* reset offloads to defaults */
	FUNC3(hw, vf, !vfinfo->pf_vlan);

	/* set outgoing tags for VFs */
	if (!vfinfo->pf_vlan && !vfinfo->pf_qos && !num_tcs) {
		FUNC0(adapter, vf);
	} else {
		if (vfinfo->pf_qos || !num_tcs)
			FUNC4(adapter, vfinfo->pf_vlan,
					vfinfo->pf_qos, vf);
		else
			FUNC4(adapter, vfinfo->pf_vlan,
					adapter->default_up, vf);
	}

	/* reset multicast table array for vf */
	adapter->vfinfo[vf].num_vf_mc_hashes = 0;

	/* Flush and reset the mta with the new values */
	FUNC1(adapter->netdev);

	hw->mac.ops.clear_rar(hw, rar_entry);

	/* reset VF api back to unknown */
	adapter->vfinfo[vf].vf_api = ixgbe_mbox_api_10;
}