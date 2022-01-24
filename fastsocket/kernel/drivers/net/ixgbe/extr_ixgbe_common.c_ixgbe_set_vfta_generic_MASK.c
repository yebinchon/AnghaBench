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
struct ixgbe_hw {int dummy; } ;
typedef  int s32 ;

/* Variables and functions */
 int IXGBE_ERR_PARAM ; 
 int FUNC0 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int IXGBE_VLVF_VIEN ; 
 int /*<<< orphan*/  IXGBE_VT_CTL ; 
 int IXGBE_VT_CTL_VT_ENABLE ; 
 int /*<<< orphan*/  FUNC4 (struct ixgbe_hw*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct ixgbe_hw*,int) ; 

s32 FUNC6(struct ixgbe_hw *hw, u32 vlan, u32 vind,
                           bool vlan_on)
{
	s32 regindex;
	u32 bitindex;
	u32 vfta;
	u32 bits;
	u32 vt;
	u32 targetbit;
	bool vfta_changed = false;

	if (vlan > 4095)
		return IXGBE_ERR_PARAM;

	/*
	 * this is a 2 part operation - first the VFTA, then the
	 * VLVF and VLVFB if VT Mode is set
	 * We don't write the VFTA until we know the VLVF part succeeded.
	 */

	/* Part 1
	 * The VFTA is a bitstring made up of 128 32-bit registers
	 * that enable the particular VLAN id, much like the MTA:
	 *    bits[11-5]: which register
	 *    bits[4-0]:  which bit in the register
	 */
	regindex = (vlan >> 5) & 0x7F;
	bitindex = vlan & 0x1F;
	targetbit = (1 << bitindex);
	vfta = FUNC0(hw, FUNC1(regindex));

	if (vlan_on) {
		if (!(vfta & targetbit)) {
			vfta |= targetbit;
			vfta_changed = true;
		}
	} else {
		if ((vfta & targetbit)) {
			vfta &= ~targetbit;
			vfta_changed = true;
		}
	}

	/* Part 2
	 * If VT Mode is set
	 *   Either vlan_on
	 *     make sure the vlan is in VLVF
	 *     set the vind bit in the matching VLVFB
	 *   Or !vlan_on
	 *     clear the pool bit and possibly the vind
	 */
	vt = FUNC0(hw, IXGBE_VT_CTL);
	if (vt & IXGBE_VT_CTL_VT_ENABLE) {
		s32 vlvf_index;

		vlvf_index = FUNC5(hw, vlan);
		if (vlvf_index < 0)
			return vlvf_index;

		if (vlan_on) {
			/* set the pool bit */
			if (vind < 32) {
				bits = FUNC0(hw,
						FUNC3(vlvf_index*2));
				bits |= (1 << vind);
				FUNC4(hw,
						FUNC3(vlvf_index*2),
						bits);
			} else {
				bits = FUNC0(hw,
						FUNC3((vlvf_index*2)+1));
				bits |= (1 << (vind-32));
				FUNC4(hw,
						FUNC3((vlvf_index*2)+1),
						bits);
			}
		} else {
			/* clear the pool bit */
			if (vind < 32) {
				bits = FUNC0(hw,
						FUNC3(vlvf_index*2));
				bits &= ~(1 << vind);
				FUNC4(hw,
						FUNC3(vlvf_index*2),
						bits);
				bits |= FUNC0(hw,
						FUNC3((vlvf_index*2)+1));
			} else {
				bits = FUNC0(hw,
						FUNC3((vlvf_index*2)+1));
				bits &= ~(1 << (vind-32));
				FUNC4(hw,
						FUNC3((vlvf_index*2)+1),
						bits);
				bits |= FUNC0(hw,
						FUNC3(vlvf_index*2));
			}
		}

		/*
		 * If there are still bits set in the VLVFB registers
		 * for the VLAN ID indicated we need to see if the
		 * caller is requesting that we clear the VFTA entry bit.
		 * If the caller has requested that we clear the VFTA
		 * entry bit but there are still pools/VFs using this VLAN
		 * ID entry then ignore the request.  We're not worried
		 * about the case where we're turning the VFTA VLAN ID
		 * entry bit on, only when requested to turn it off as
		 * there may be multiple pools and/or VFs using the
		 * VLAN ID entry.  In that case we cannot clear the
		 * VFTA bit until all pools/VFs using that VLAN ID have also
		 * been cleared.  This will be indicated by "bits" being
		 * zero.
		 */
		if (bits) {
			FUNC4(hw, FUNC2(vlvf_index),
					(IXGBE_VLVF_VIEN | vlan));
			if (!vlan_on) {
				/* someone wants to clear the vfta entry
				 * but some pools/VFs are still using it.
				 * Ignore it. */
				vfta_changed = false;
			}
		}
		else
			FUNC4(hw, FUNC2(vlvf_index), 0);
	}

	if (vfta_changed)
		FUNC4(hw, FUNC1(regindex), vfta);

	return 0;
}