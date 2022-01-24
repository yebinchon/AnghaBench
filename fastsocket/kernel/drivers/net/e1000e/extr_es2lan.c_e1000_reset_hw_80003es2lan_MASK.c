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
typedef  int /*<<< orphan*/  u16 ;
struct e1000_hw {int dummy; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  CTRL ; 
 int E1000_CTRL_RST ; 
 int /*<<< orphan*/  E1000_KMRNCTRLSTA_IBIST_DISABLE ; 
 int /*<<< orphan*/  E1000_KMRNCTRLSTA_INBAND_PARAM ; 
 int E1000_TCTL_PSP ; 
 int /*<<< orphan*/  ICR ; 
 int /*<<< orphan*/  IMC ; 
 int /*<<< orphan*/  RCTL ; 
 int /*<<< orphan*/  TCTL ; 
 scalar_t__ FUNC0 (struct e1000_hw*) ; 
 scalar_t__ FUNC1 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct e1000_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct e1000_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct e1000_hw*) ; 
 scalar_t__ FUNC6 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int,int) ; 

__attribute__((used)) static s32 FUNC12(struct e1000_hw *hw)
{
	u32 ctrl;
	s32 ret_val;
	u16 kum_reg_data;

	/* Prevent the PCI-E bus from sticking if there is no TLP connection
	 * on the last TLP read/write transaction when MAC is reset.
	 */
	ret_val = FUNC5(hw);
	if (ret_val)
		FUNC8("PCI-E Master disable polling has failed.\n");

	FUNC8("Masking off all interrupts\n");
	FUNC10(IMC, 0xffffffff);

	FUNC10(RCTL, 0);
	FUNC10(TCTL, E1000_TCTL_PSP);
	FUNC7();

	FUNC11(10000, 20000);

	ctrl = FUNC9(CTRL);

	ret_val = FUNC0(hw);
	if (ret_val)
		return ret_val;

	FUNC8("Issuing a global reset to MAC\n");
	FUNC10(CTRL, ctrl | E1000_CTRL_RST);
	FUNC3(hw);

	/* Disable IBIST slave mode (far-end loopback) */
	FUNC2(hw, E1000_KMRNCTRLSTA_INBAND_PARAM,
					&kum_reg_data);
	kum_reg_data |= E1000_KMRNCTRLSTA_IBIST_DISABLE;
	FUNC4(hw, E1000_KMRNCTRLSTA_INBAND_PARAM,
					 kum_reg_data);

	ret_val = FUNC6(hw);
	if (ret_val)
		/* We don't want to continue accessing MAC registers. */
		return ret_val;

	/* Clear any pending interrupt events. */
	FUNC10(IMC, 0xffffffff);
	FUNC9(ICR);

	return FUNC1(hw);
}