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
typedef  size_t u32 ;
typedef  int u16 ;
struct vf_data_storage {int num_vf_mc_hashes; int* vf_mc_hashes; } ;
struct ixgbe_hw {int dummy; } ;
struct ixgbe_adapter {struct ixgbe_hw hw; struct vf_data_storage* vfinfo; } ;

/* Variables and functions */
 int /*<<< orphan*/  IXGBE_MAX_VF_MC_ENTRIES ; 
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 size_t FUNC1 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 size_t IXGBE_VT_MSGINFO_MASK ; 
 size_t IXGBE_VT_MSGINFO_SHIFT ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbe_hw*,int /*<<< orphan*/ ,size_t) ; 
 int FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct ixgbe_adapter *adapter,
				   u32 *msgbuf, u32 vf)
{
	int entries = (msgbuf[0] & IXGBE_VT_MSGINFO_MASK)
		       >> IXGBE_VT_MSGINFO_SHIFT;
	u16 *hash_list = (u16 *)&msgbuf[1];
	struct vf_data_storage *vfinfo = &adapter->vfinfo[vf];
	struct ixgbe_hw *hw = &adapter->hw;
	int i;
	u32 vector_bit;
	u32 vector_reg;
	u32 mta_reg;

	/* only so many hash values supported */
	entries = FUNC3(entries, IXGBE_MAX_VF_MC_ENTRIES);

	/*
	 * salt away the number of multi cast addresses assigned
	 * to this VF for later use to restore when the PF multi cast
	 * list changes
	 */
	vfinfo->num_vf_mc_hashes = entries;

	/*
	 * VFs are limited to using the MTA hash table for their multicast
	 * addresses
	 */
	for (i = 0; i < entries; i++) {
		vfinfo->vf_mc_hashes[i] = hash_list[i];
	}

	for (i = 0; i < vfinfo->num_vf_mc_hashes; i++) {
		vector_reg = (vfinfo->vf_mc_hashes[i] >> 5) & 0x7F;
		vector_bit = vfinfo->vf_mc_hashes[i] & 0x1F;
		mta_reg = FUNC1(hw, FUNC0(vector_reg));
		mta_reg |= (1 << vector_bit);
		FUNC2(hw, FUNC0(vector_reg), mta_reg);
	}

	return 0;
}