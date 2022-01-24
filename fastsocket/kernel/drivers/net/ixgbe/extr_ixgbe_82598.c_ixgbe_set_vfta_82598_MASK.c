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
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int /*<<< orphan*/  IXGBE_ERR_PARAM ; 
 int FUNC0 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ixgbe_hw*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static s32 FUNC4(struct ixgbe_hw *hw, u32 vlan, u32 vind,
				bool vlan_on)
{
	u32 regindex;
	u32 bitindex;
	u32 bits;
	u32 vftabyte;

	if (vlan > 4095)
		return IXGBE_ERR_PARAM;

	/* Determine 32-bit word position in array */
	regindex = (vlan >> 5) & 0x7F;   /* upper seven bits */

	/* Determine the location of the (VMD) queue index */
	vftabyte =  ((vlan >> 3) & 0x03); /* bits (4:3) indicating byte array */
	bitindex = (vlan & 0x7) << 2;    /* lower 3 bits indicate nibble */

	/* Set the nibble for VMD queue index */
	bits = FUNC0(hw, FUNC2(vftabyte, regindex));
	bits &= (~(0x0F << bitindex));
	bits |= (vind << bitindex);
	FUNC3(hw, FUNC2(vftabyte, regindex), bits);

	/* Determine the location of the bit for this VLAN id */
	bitindex = vlan & 0x1F;   /* lower five bits */

	bits = FUNC0(hw, FUNC1(regindex));
	if (vlan_on)
		/* Turn on this VLAN id */
		bits |= (1 << bitindex);
	else
		/* Turn off this VLAN id */
		bits &= ~(1 << bitindex);
	FUNC3(hw, FUNC1(regindex), bits);

	return 0;
}