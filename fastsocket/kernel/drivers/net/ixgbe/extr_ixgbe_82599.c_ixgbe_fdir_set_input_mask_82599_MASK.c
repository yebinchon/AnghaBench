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
struct TYPE_2__ {int vm_pool; int flow_type; int flex_bytes; int /*<<< orphan*/ * dst_ip; int /*<<< orphan*/ * src_ip; int /*<<< orphan*/  vlan_id; int /*<<< orphan*/  src_port; int /*<<< orphan*/  dst_port; scalar_t__ bkt_hash; } ;
union ixgbe_atr_input {TYPE_1__ formatted; } ;
typedef  int /*<<< orphan*/  u32 ;
struct ixgbe_hw {int dummy; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
#define  IXGBE_ATR_L4TYPE_MASK 128 
 int /*<<< orphan*/  IXGBE_ERR_CONFIG ; 
 int /*<<< orphan*/  IXGBE_FDIRDIP4M ; 
 int /*<<< orphan*/  IXGBE_FDIRM ; 
 int /*<<< orphan*/  IXGBE_FDIRM_DIPv6 ; 
 int /*<<< orphan*/  IXGBE_FDIRM_FLEX ; 
 int /*<<< orphan*/  IXGBE_FDIRM_L4P ; 
 int /*<<< orphan*/  IXGBE_FDIRM_POOL ; 
 int /*<<< orphan*/  IXGBE_FDIRM_VLANID ; 
 int /*<<< orphan*/  IXGBE_FDIRM_VLANP ; 
 int /*<<< orphan*/  IXGBE_FDIRSIP4M ; 
 int /*<<< orphan*/  IXGBE_FDIRTCPM ; 
 int /*<<< orphan*/  IXGBE_FDIRUDPM ; 
 int /*<<< orphan*/  FUNC0 (struct ixgbe_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ixgbe_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbe_hw*,char*) ; 
 int /*<<< orphan*/  FUNC3 (union ixgbe_atr_input*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

s32 FUNC5(struct ixgbe_hw *hw,
				    union ixgbe_atr_input *input_mask)
{
	/* mask IPv6 since it is currently not supported */
	u32 fdirm = IXGBE_FDIRM_DIPv6;
	u32 fdirtcpm;

	/*
	 * Program the relevant mask registers.  If src/dst_port or src/dst_addr
	 * are zero, then assume a full mask for that field.  Also assume that
	 * a VLAN of 0 is unspecified, so mask that out as well.  L4type
	 * cannot be masked out in this implementation.
	 *
	 * This also assumes IPv4 only.  IPv6 masking isn't supported at this
	 * point in time.
	 */

	/* verify bucket hash is cleared on hash generation */
	if (input_mask->formatted.bkt_hash)
		FUNC2(hw, " bucket hash should always be 0 in mask\n");

	/* Program FDIRM and verify partial masks */
	switch (input_mask->formatted.vm_pool & 0x7F) {
	case 0x0:
		fdirm |= IXGBE_FDIRM_POOL;
	case 0x7F:
		break;
	default:
		FUNC2(hw, " Error on vm pool mask\n");
		return IXGBE_ERR_CONFIG;
	}

	switch (input_mask->formatted.flow_type & IXGBE_ATR_L4TYPE_MASK) {
	case 0x0:
		fdirm |= IXGBE_FDIRM_L4P;
		if (input_mask->formatted.dst_port ||
		    input_mask->formatted.src_port) {
			FUNC2(hw, " Error on src/dst port mask\n");
			return IXGBE_ERR_CONFIG;
		}
	case IXGBE_ATR_L4TYPE_MASK:
		break;
	default:
		FUNC2(hw, " Error on flow type mask\n");
		return IXGBE_ERR_CONFIG;
	}

	switch (FUNC4(input_mask->formatted.vlan_id) & 0xEFFF) {
	case 0x0000:
		/* mask VLAN ID, fall through to mask VLAN priority */
		fdirm |= IXGBE_FDIRM_VLANID;
	case 0x0FFF:
		/* mask VLAN priority */
		fdirm |= IXGBE_FDIRM_VLANP;
		break;
	case 0xE000:
		/* mask VLAN ID only, fall through */
		fdirm |= IXGBE_FDIRM_VLANID;
	case 0xEFFF:
		/* no VLAN fields masked */
		break;
	default:
		FUNC2(hw, " Error on VLAN mask\n");
		return IXGBE_ERR_CONFIG;
	}

	switch (input_mask->formatted.flex_bytes & 0xFFFF) {
	case 0x0000:
		/* Mask Flex Bytes, fall through */
		fdirm |= IXGBE_FDIRM_FLEX;
	case 0xFFFF:
		break;
	default:
		FUNC2(hw, " Error on flexible byte mask\n");
		return IXGBE_ERR_CONFIG;
	}

	/* Now mask VM pool and destination IPv6 - bits 5 and 2 */
	FUNC0(hw, IXGBE_FDIRM, fdirm);

	/* store the TCP/UDP port masks, bit reversed from port layout */
	fdirtcpm = FUNC3(input_mask);

	/* write both the same so that UDP and TCP use the same mask */
	FUNC0(hw, IXGBE_FDIRTCPM, ~fdirtcpm);
	FUNC0(hw, IXGBE_FDIRUDPM, ~fdirtcpm);

	/* store source and destination IP masks (big-enian) */
	FUNC1(hw, IXGBE_FDIRSIP4M,
			     ~input_mask->formatted.src_ip[0]);
	FUNC1(hw, IXGBE_FDIRDIP4M,
			     ~input_mask->formatted.dst_ip[0]);

	return 0;
}