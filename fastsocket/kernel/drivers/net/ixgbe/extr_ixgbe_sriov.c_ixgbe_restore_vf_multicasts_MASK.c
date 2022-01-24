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
struct vf_data_storage {int num_vf_mc_hashes; int* vf_mc_hashes; } ;
struct TYPE_2__ {int /*<<< orphan*/  mta_in_use; } ;
struct ixgbe_hw {TYPE_1__ addr_ctrl; } ;
struct ixgbe_adapter {int num_vfs; struct vf_data_storage* vfinfo; struct ixgbe_hw hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbe_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ixgbe_adapter*) ; 

void FUNC4(struct ixgbe_adapter *adapter)
{
	struct ixgbe_hw *hw = &adapter->hw;
	struct vf_data_storage *vfinfo;
	int i, j;
	u32 vector_bit;
	u32 vector_reg;
	u32 mta_reg;

	for (i = 0; i < adapter->num_vfs; i++) {
		vfinfo = &adapter->vfinfo[i];
		for (j = 0; j < vfinfo->num_vf_mc_hashes; j++) {
			hw->addr_ctrl.mta_in_use++;
			vector_reg = (vfinfo->vf_mc_hashes[j] >> 5) & 0x7F;
			vector_bit = vfinfo->vf_mc_hashes[j] & 0x1F;
			mta_reg = FUNC1(hw, FUNC0(vector_reg));
			mta_reg |= (1 << vector_bit);
			FUNC2(hw, FUNC0(vector_reg), mta_reg);
		}
	}

	/* Restore any VF macvlans */
	FUNC3(adapter);
}