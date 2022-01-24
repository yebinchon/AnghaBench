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
struct e1000_hw {int dummy; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  E1000_CTRL ; 
 int E1000_CTRL_RST ; 
 int /*<<< orphan*/  E1000_EECD ; 
 int E1000_EECD_PRES ; 
 int /*<<< orphan*/  E1000_ICR ; 
 int /*<<< orphan*/  E1000_IMC ; 
 int /*<<< orphan*/  E1000_RCTL ; 
 int /*<<< orphan*/  E1000_TCTL ; 
 int E1000_TCTL_PSP ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (struct e1000_hw*) ; 
 scalar_t__ FUNC2 (struct e1000_hw*) ; 
 scalar_t__ FUNC3 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct e1000_hw*) ; 
 scalar_t__ FUNC5 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 () ; 

__attribute__((used)) static s32 FUNC10(struct e1000_hw *hw)
{
	u32 ctrl;
	s32 ret_val;

	/* Prevent the PCI-E bus from sticking if there is no TLP connection
	 * on the last TLP read/write transaction when MAC is reset.
	 */
	ret_val = FUNC2(hw);
	if (ret_val)
		FUNC0("PCI-E Master disable polling has failed.\n");

	/* set the completion timeout for interface */
	ret_val = FUNC5(hw);
	if (ret_val) {
		FUNC0("PCI-E Set completion timeout has failed.\n");
	}

	FUNC0("Masking off all interrupts\n");
	FUNC8(E1000_IMC, 0xffffffff);

	FUNC8(E1000_RCTL, 0);
	FUNC8(E1000_TCTL, E1000_TCTL_PSP);
	FUNC9();

	FUNC6(10);

	ctrl = FUNC7(E1000_CTRL);

	FUNC0("Issuing a global reset to MAC\n");
	FUNC8(E1000_CTRL, ctrl | E1000_CTRL_RST);

	ret_val = FUNC3(hw);
	if (ret_val) {
		/* When auto config read does not complete, do not
		 * return with an error. This can happen in situations
		 * where there is no eeprom and prevents getting link.
		 */
		FUNC0("Auto Read Done did not complete\n");
	}

	/* If EEPROM is not present, run manual init scripts */
	if ((FUNC7(E1000_EECD) & E1000_EECD_PRES) == 0)
		FUNC4(hw);

	/* Clear any pending interrupt events. */
	FUNC8(E1000_IMC, 0xffffffff);
	FUNC7(E1000_ICR);

	/* Install any alternate MAC address into RAR0 */
	ret_val = FUNC1(hw);

	return ret_val;
}