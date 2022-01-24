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
struct pch_gbe_hw {int dummy; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct pch_gbe_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct pch_gbe_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct pch_gbe_hw*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static s32 FUNC4(struct pch_gbe_hw *hw)
{
	s32 ret_val;

	ret_val = FUNC0(hw);
	if (ret_val) {
		FUNC3("pch_gbe_phy_get_id error\n");
		return ret_val;
	}
	FUNC1(hw);
	/* Setup Mac interface option RGMII */
#ifdef PCH_GBE_MAC_IFOP_RGMII
	pch_gbe_phy_set_rgmii(hw);
#endif
	return ret_val;
}