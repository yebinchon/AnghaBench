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
struct vf_data_storage {int num_vf_mc_hashes; int flags; int /*<<< orphan*/ * vf_mc_hashes; } ;
struct e1000_hw {int dummy; } ;
struct igb_adapter {int vfs_allocated_count; struct vf_data_storage* vf_data; struct e1000_hw hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int E1000_VMOLR_MPME ; 
 int E1000_VMOLR_ROMPE ; 
 int IGB_VF_FLAG_MULTI_PROMISC ; 
 int /*<<< orphan*/  FUNC1 (struct e1000_hw*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct igb_adapter *adapter)
{
	struct e1000_hw *hw = &adapter->hw;
	struct vf_data_storage *vf_data;
	int i, j;

	for (i = 0; i < adapter->vfs_allocated_count; i++) {
		u32 vmolr = FUNC2(FUNC0(i));
		vmolr &= ~(E1000_VMOLR_ROMPE | E1000_VMOLR_MPME);

		vf_data = &adapter->vf_data[i];

		if ((vf_data->num_vf_mc_hashes > 30) ||
		    (vf_data->flags & IGB_VF_FLAG_MULTI_PROMISC)) {
			vmolr |= E1000_VMOLR_MPME;
		} else if (vf_data->num_vf_mc_hashes) {
			vmolr |= E1000_VMOLR_ROMPE;
			for (j = 0; j < vf_data->num_vf_mc_hashes; j++)
				FUNC1(hw, vf_data->vf_mc_hashes[j]);
		}
		FUNC3(FUNC0(i), vmolr);
	}
}