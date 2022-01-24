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
struct atl2_hw {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct atl2_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct atl2_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  REG_VPD_CAP ; 
 int /*<<< orphan*/  REG_VPD_DATA ; 
 int VPD_CAP_VPD_ADDR_MASK ; 
 int VPD_CAP_VPD_ADDR_SHIFT ; 
 int VPD_CAP_VPD_FLAG ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static bool FUNC3(struct atl2_hw *hw, u32 Offset, u32 *pValue)
{
	int i;
	u32    Control;

	if (Offset & 0x3)
		return false; /* address do not align */

	FUNC1(hw, REG_VPD_DATA, 0);
	Control = (Offset & VPD_CAP_VPD_ADDR_MASK) << VPD_CAP_VPD_ADDR_SHIFT;
	FUNC1(hw, REG_VPD_CAP, Control);

	for (i = 0; i < 10; i++) {
		FUNC2(2);
		Control = FUNC0(hw, REG_VPD_CAP);
		if (Control & VPD_CAP_VPD_FLAG)
			break;
	}

	if (Control & VPD_CAP_VPD_FLAG) {
		*pValue = FUNC0(hw, REG_VPD_DATA);
		return true;
	}
	return false; /* timeout */
}